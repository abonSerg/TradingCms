$(document).ready(function() {
    
    // Carousel for product
    $('.carousel ul').anoSlide(
    {
        items: 1,
        speed: 500,
        prev: 'a.prev[data-prev-mixed]',
        next: 'a.next[data-next-mixed]',
        lazy: true
    })

	// fancybox
	$(".fancybox").fancybox();

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
	    var count = parseInt($input.val()) + 1;
	    count = count >= 99 ? 99 : count;
	    $input.val(count);
	    $input.change();
	    return false;
	});
	

});