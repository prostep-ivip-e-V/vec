const fs = require('fs');
const path = require( 'path');
const puppeteer = require('puppeteer');

function createDirectories(pathname) {
   const __dirname = path.resolve();
   pathname = pathname.replace(/^\.*\/|\/?[^\/]+\.[a-z]+|\/$/g, ''); // Remove leading directory markers, and remove ending /file-name.extension
   fs.mkdir(path.resolve(__dirname, pathname), { recursive: true }, e => {
       if (e) {
           console.error(e);
       } else {
           console.log('Success');
       }
    });
}

const pdfPages = [
    { url: 'http://localhost:8080/specifications/vec/guidelines/printable.html', outputPath: './pdf/specifications/vec/guidelines/vec-guidelines.pdf' },
    { url: 'http://localhost:8080/specifications/kbl/guidelines/printable.html', outputPath: './pdf/specifications/kbl/guidelines/kbl-guidelines.pdf' },
    // Add more pages as needed
];

(async () => {
    

    // Launch a headless browser
    const browser = await puppeteer.launch({
        headless: 'old',
        protocolTimeout: 600000,
        timeout: 600000,
        args: [
            '--no-sandbox',
            '--disable-setuid-sandbox'
        ]
    });

    for (const pageConfig of pdfPages) {
    // Open a new page
        const page = await browser.newPage();

        // Navigate to the specific page you want to convert to PDF
        await page.goto(pageConfig.url, {
            waitUntil: 'networkidle2' // Waits for the network to be idle (no more than 2 connections for at least 500 ms)
        });

        // Load all images now instead of lazily (loading="lazy"), wait until each one
        // has loaded or failed, and collect the images that could not be displayed.
        const broken = await page.evaluate(async () => {
            const images = Array.from(document.images);
            images.forEach((img) => { img.loading = 'eager'; });
            await Promise.all(images.map((img) => img.complete ? null : new Promise((resolve) => {
                img.addEventListener('load', resolve, { once: true });
                img.addEventListener('error', resolve, { once: true });
            })));
            return images.filter((img) => img.naturalWidth === 0).map((img) => img.currentSrc || img.src);
        });
        if (broken.length > 0) {
            // A broken image would show up as an icon in the PDF: fail the build instead.
            console.error(`${broken.length} image(s) could not be loaded for ${pageConfig.url}:`);
            broken.forEach((src) => console.error(`  ${src}`));
            process.exitCode = 1;
        }

        createDirectories(pageConfig.outputPath);

        // Generate a PDF of the page
        await page.pdf({
            path: pageConfig.outputPath, // The path to save the PDF to
            format: 'A4', // Specify the format
            margin: {
                top: "95px",
                right: "95px",
                bottom: "95px",
                left: "95px"
            },
            printBackground: true // Ensure the background graphics are included
        });

        console.log(`PDF generated: ${pageConfig.outputPath}`);
        await page.close();
    }

    // Close the browser
    await browser.close();
})();