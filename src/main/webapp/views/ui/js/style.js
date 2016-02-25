$(function(){
    resize()
}());

$(window).resize(function(){
    resize();
});

function resize(){
	//宽高比加减法
	
//	$(".king").css("marginLeft",($(window).outerWidth()-$(".king").outerWidth())/2);

    $(".ltitle").css("marginTop",($(window).outerHeight()/5*0.35));

    $(".zinput").css("marginTop",($(window).outerHeight()/5*0.25));

    $(".zbutton").css("marginTop",($(window).outerHeight()/5*0.3));
	
}
