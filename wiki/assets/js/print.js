  function unveilAndPrint(win) {
    var ctr = 0;
    win.document.querySelectorAll('img.lazyload').forEach(function(v, k, array) {
      lazySizes.loader.unveil(v);
      ctr++;
      if (ctr === array.length) {
        setTimeout(function() {
          ctr = 0;
          win.print();
          win.close();
        },2000);
      }
    });
  }

function printInNewWindow(url)
  {
    var myWindow=window.open(url);

    myWindow.addEventListener('load', function () {
        unveilAndPrint(myWindow);
    },true)
  }

