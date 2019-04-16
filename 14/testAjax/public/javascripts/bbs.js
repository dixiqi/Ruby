
$(function($) {
    $('#refresh').bind(
        'ajax:success',
        function(data, status, xhr) {
            $("#user_list").html(status);
        });
    
    //模拟单击触发更新事件
    $('#refresh').click();
});

