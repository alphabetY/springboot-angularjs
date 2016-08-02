/*首页图片展示*/
$(function(){
	var len=$(".index_num > li").length;
	var index=0;
	var adTimer;
	$(".index_num li").click(function(){
		index=$(".index_num li").index(this);
		showImg(index);
	}).eq(0).click();//页面的初始状态

	//滑入停止动画，滑出开始动画
	$(".index_img").hover(function(){
		clearInterval(adTimer);
	},function(){
		adTimer=setInterval(function(){
			showImg(index)
			index++;
			if(index==len){
				index=0;
			}
		},2000);
	}).trigger("mouseleave");
})
	//showImg(index):通过控制top显示图片
	function showImg(index){
		var adHeight=$(".index_img").height();
		$(".img_slider").css("top",-adHeight*index);
		$(".index_num li").removeClass("on")
			.eq(index).addClass("on");
	}

