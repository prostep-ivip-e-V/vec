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
    const browser = await puppeteer.launch();

    for (const pageConfig of pdfPages) {
    // Open a new page
        const page = await browser.newPage();

        // Navigate to the specific page you want to convert to PDF
        await page.goto(pageConfig.url, {
            waitUntil: 'networkidle2' // Waits for the network to be idle (no more than 2 connections for at least 500 ms)
        });

            // Scroll to the bottom of the page for all lazy loaded pictures.
        await page.evaluate(async () => {
            await new Promise((resolve, reject) => {
                var totalHeight = 0;
                var distance = 100; // Should be less than or equal to window.innerHeight
                var timer = setInterval(() => {
                    var scrollHeight = document.body.scrollHeight;
                    window.scrollBy(0, distance);
                    totalHeight += distance;

                    if(totalHeight >= scrollHeight){
                        clearInterval(timer);
                        resolve();
                    }
                }, 100);
            });
        });

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