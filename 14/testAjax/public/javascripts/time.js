var xmlRequest;
function CreateRequest(){
    if(window.ActiveXObject)
    {
        /* 如果浏览器支持 ActiveX 对象，就使用ActiveX对象创建一个 XMLHttpRequest 对象
            支持 IE 浏览器*/
        return new ActiveXObject("Microsoft.XMLHTTP");
    }
    else if(window.XMLHttpRequest)
    {
        /* 如果浏览器支持 XMLHttpRequest 对象，就直接创建一个 XMLHttpRequest 对象
            支持其它主流浏览器（FF,Chome,Safari等）*/
        return new XMLHttpRequest();
    }
}

function ResponseHandler(){
    if(xmlRequest.readyState == 4 && xmlRequest.status == 200){
        /* 如果通信成功，并且响应正常，执行以下操作 */

        var reqContent = xmlRequest.responseText;
        document.getElementById("now").innerHTML = reqContent;
    }
}

function AjaxAccess(){
    xmlRequest = CreateRequest();  //创建XMLHttpRequest对象
    xmlRequest.onreadystatechange = ResponseHandler;  //设置回调函数
    xmlRequest.open("GET","http://localhost:3000/ajaxes/now");  //初始化请求对象
    xmlRequest.send(null);	  //发送请求信息
}

window.onload = function(){
    AjaxAccess();
}
