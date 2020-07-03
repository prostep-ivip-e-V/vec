
function RecordCurrentPage(title){
    var history = readHistory();
    var entry = {
        title: title,
        url:  document.URL
    }

    history = history.filter(e => e.url !== document.URL);

    history.push(entry);

    while(history.length > 7){
        history.shift();
    }

    storeHistory(history);
}

function truncateString(str, num) {
    if (str.length <= num) {
      return str
    }
    return str.slice(0, num) + '&hellip;'
}

function readHistory(){
    var content = Cookies.get('trace');

    if(content === undefined) {
        return new Array();
    }

    return JSON.parse(content);
}

function storeHistory(links){
   Cookies.set('trace', JSON.stringify(Array.from(links)));
}

function InitializeTraceList(){
    var history = readHistory();

    var breadcrumbList = document.getElementById("navbar-trace-list")

    history.forEach( (element, index) => {
        var newLi = document.createElement("li");
        newLi.innerHTML = (index > 0 ? '<i class="fas fa-angle-right"></i>' : '');
        
        

        newLi.className = "breadcrumb-item";
        if((index + 1) === history.length){
            newLi.classList.add('active');
            newLi.innerHTML = newLi.innerHTML + element.title;
        } else {
            newLi.innerHTML = newLi.innerHTML +  '<a href="' + element.url + '" title="' + element.title + '">'+ truncateString(element.title,25) +'</a>';
        }
        breadcrumbList.appendChild(newLi);             
    });
}

RecordCurrentPage(tracePageTitle);
InitializeTraceList();
