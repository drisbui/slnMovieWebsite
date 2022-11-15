// start: vị trí bắt đầu , limit: giới hạn lấy giá trị hiển thị, totalpage: tổng số trang để thực hiện phân trang, currentpage: số trang hiện tại đang lấy dữ liệu
function PaginationPage(start, limit, totalpage, currentpage) {

    let totalcount = totalpage;

    function getUrl() {
        var data = [];
        for (j = 1; j <= totalcount; j++) {
            var url = '?page=' + j;
            data.push(url);
        }
        return data;

    }

    function getData(url) {
        fetch(url)
            .then(response => response.text())
            .catch(err => console.log(err));
    }

    function init() {
        const url = getUrl();
        getData(url);

    }

    function handlevent(value) {
        start = value;
        rebuildPagination(start, totalcount);

        url = getUrl();
        getData(url);
    }

    init();

    function rebuildPagination(currentPage, totalcount) {
        currentPage = currentpage;
        var HTML = "";
        
            if (totalcount <= 6) {
                for (i = 1; i <= totalcount; i++) {
                    HTML += addButton(i, currentPage);
                }
            }
            else {
                HTML += addButton("1", currentPage);

                if (currentPage > 3) {
                    HTML += "<li class='page-item disabled'><a class='page-link'>...</a></li>";
                }
                if (currentPage == totalcount) {
                    HTML += addButton(currentPage - 2, currentPage);
                }
                if (currentPage > 2) {
                    HTML += addButton(currentPage - 1, currentPage);
                }
                if (currentPage != 1 && currentPage != totalcount) {
                    HTML += addButton(currentPage, currentPage);
                }

                if (currentPage < totalcount - 1) {
                    HTML += addButton(currentPage + 1, currentPage);
                }
                if (currentPage == 1) {
                    HTML += addButton(currentPage + 2, currentPage);
                }

                if (currentPage < totalcount - 2) {
                    HTML += "<li class='page-item disabled'><a class='page-link'>...</a></li>";
                }
                if (totalcount > 1) {
                    HTML += addButton(totalcount, currentPage);
                }
        }
        if (document.getElementById("page") != null) {
            document.getElementById("page").innerHTML = HTML;
        }
        
    }

    function addButton(number, currentPage) {
        currentPage = currentpage;
        var HTML = "<li class='page-item'><a class='page-link ";

        if (number == currentPage) {
            HTML += "active'";
        } else {
            HTML += "'";
        }

        HTML += " href=\"?page=" + number + "\" onclick=\"handlevent(" + number + ")\">";
        HTML += number;
        HTML += "</a></li> ";
        return HTML;
    }

    rebuildPagination(start, totalcount);

}