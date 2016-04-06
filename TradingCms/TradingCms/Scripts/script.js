$(document).ready(function() {

	// fancybox
	$(".fancybox").fancybox();

	//Carousel for product
	var owl_1 = $(".product-carousel");
	owl_1.owlCarousel({
		items : 2,
		pagination: false,
		mouseDrag: false,
		slideSpeed: 800,
		rewindNav: false
	});

	$(".product-carousel-next-button").click(function () {
		owl_1.trigger("owl.next");
	});
	$(".product-carousel-prev-button").click(function () {
		owl_1.trigger("owl.prev");
	});

    //Open images in big image product
	$('.slide-item a').click(function () {
	    var where_img = $('.product-big-image');
	    var who = $(this).find('img');
	    where_img.animate({ 'opacity': '0' }, 0);
	    setTimeout(function () { where_img.attr({ 'src': who.attr('src') }) }, 0);
	    where_img.parent().attr({ 'href': who.attr('src') });
	    where_img.animate({ 'opacity': '1' }, 0);
	    return false;
	});


	//Carousel for main
	var owl_2 = $(".slider-main");
	owl_2.owlCarousel({
	    items: 1,
	    mouseDrag: false,
	    slideSpeed: 600,
	    rewindNav: false
	});

	$(".slider-main-next-button").click(function () {
		owl_2.trigger("owl.next");
	});
	$(".slider-main-prev-button").click(function () {
		owl_2.trigger("owl.prev");
	});

	//top anchor
	$("#top").click(function () {
		$("body, html").animate({
			scrollTop: 0
		}, 800);
		return false;
	});

    //sum
	$('.minus').click(function () {
	    var $input = $(this).parent().find('input');
	    var count = parseInt($input.val()) - 1;
	    count = count < 1 ? 1 : count;
	    $input.val(count);
	    $input.change();
	    return false;
	});

	$('.plus').click(function () {
	    var $input = $(this).parent().find('input');
	    $input.val(parseInt($input.val()) + 1);
	    $input.change();
	    return false;
	});
	

});