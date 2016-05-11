$(document).ready(function() {
    
    //Slider for main
    $('.right-content-slider').slick({
        draggable: false,
        speed: 500,
        slidesToShow: 1,
        slidesToScroll: 1,
        prevArrow: '<button type="button" class="right-content-slider-prev"><i class="fa fa-angle-left"></i></button>',
        nextArrow: '<button type="button" class="right-content-slider-next"><i class="fa fa-angle-right"></i></button>',
    });

    //Slider for recently products
    $('.recently-products-slider-wrap').slick({
        draggable: false,
        speed: 500,
        slidesToShow: 4,
        slidesToScroll: 1,
        prevArrow: '<button type="button" class="recently-products-slider-prev"><i class="fa fa-angle-left"></i></button>',
        nextArrow: '<button type="button" class="recently-products-slider-next"><i class="fa fa-angle-right"></i></button>',
        responsive: [
          {
              breakpoint: 1024,
              settings: {
                  slidesToShow: 3,
                  slidesToScroll: 1,
              }
          },
          {
              breakpoint: 600,
              settings: {
                  slidesToShow: 2,
                  slidesToScroll: 1
              }
          },
          {
              breakpoint: 480,
              settings: {
                  slidesToShow: 1,
                  slidesToScroll: 1
              }
          }
        ]
    });

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

    //Slider for product page - item
	$('.product-main-image').slick({
	    slidesToShow: 1,
	    slidesToScroll: 1,
	    arrows: false,
	    fade: true,
	    asNavFor: '.product-additional-images'
	});

	$('.product-additional-images').slick({
	    slidesToShow: 3,
	    slidesToScroll: 1,
	    asNavFor: '.product-main-image',
	    //dots: true,
	    centerMode: true,
	    focusOnSelect: true,
	    prevArrow: '<button type="button" class="product-slider-prev"><i class="fa fa-angle-left"></i></button>',
	    nextArrow: '<button type="button" class="product-slider-next"><i class="fa fa-angle-right"></i></button>'
	});
	
});