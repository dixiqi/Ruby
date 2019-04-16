$(document).ready(function(){
    var url = "http://localhost:3000/ajaxes/user_list";
    $.getJSON(url, initTable);

    $("#prev").click(function(){
        var url = "http://localhost:3000/ajaxes/user_list?op=prev";
        /* 异步请求，载入 JSON 数据 */
        $.getJSON(url, initTable);
    });

    $("#next").click(function(){
        var url = "http://localhost:3000/ajaxes/user_list?op=next";
        /* 异步请求，载入 JSON 数据 */
        $.getJSON(url, initTable);
    });
});

function initTable(data){
    $("#users>table>tbody").html("");
    
	/* 遍历请求结果 */
	$.each(data,
        function(index, p){
            var html = "<tr><td>" + p.LoginName + "</td><td>" + p.Password +
            "</td><td>" + p.UserName + "</td></tr>"
            $("#users>table>tbody").append(html);
        });
}