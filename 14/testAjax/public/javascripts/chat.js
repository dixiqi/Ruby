  function LoadMessages(){
    /* 要访问的页面URL */
    var url = "http://localhost:3000/ajaxes/messages";
    $("#messages").load(url);  //加载相应内容
  }

  $(function(){
      setInterval("LoadMessages()",2000);
  });
