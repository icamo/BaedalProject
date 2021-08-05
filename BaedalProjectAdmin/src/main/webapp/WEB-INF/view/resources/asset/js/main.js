$(function(){
	$(function(){
		/* left_bar 슬라이딩메뉴 */
		$(".menu_btn").click(function(){
			if($(this).next().is(':hidden')){
				$(".hid_menu").slideUp();
				$(this).next().slideDown();
			} else{
				$('.hid_menu').slideUp();
			}
		});
	});
});