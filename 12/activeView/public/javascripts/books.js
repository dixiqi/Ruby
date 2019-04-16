//定义要设置的颜色数组
var colors=new Array("#000","#339","#c93","#6C3","#00F","#0FF","#F66");

$(document).ready(function(){
	$("#colors li").each(function(index){						//遍历li元素
		$(this).css("background-color",colors[index]);		//从颜色数组中设置相应的颜色
	});
	$("#colors li").click(function(){
		var activeCss={"border":1,"border-style":"solid","border-color":"#f00"};
		$(this).css(activeCss);						//设置当前元素为激活状态
		$("#colors li").not($(this)).css("border","0");			//设置其他元素为不激活状态
		
		var activeColor=$(this).css("backgroundColor");	//获取当前元素的背景色
		$("#body").css("color",activeColor);				//将颜色应用到字体上
		$("#res").html("当前字体的颜色值为："+activeColor)
	});
});