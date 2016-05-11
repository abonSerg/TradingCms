(function () {
    'use strict';
    angular.module('productsApp')
        .factory('sliderConfigService', sliderConfigService);

    function sliderConfigService() {
        var service = {
            topProductsConfig: topProductsConfig
        }
        return service;

        function topProductsConfig() {
            var config = {
                draggable: false,
                speed: 500,
                slidesToShow: 4,
                slidesToScroll: 1,
                prevArrow: '<button type="button" class="right-content-slider-prev"><i class="fa fa-angle-left"></i></button>',
                nextArrow: '<button type="button" class="right-content-slider-next"><i class="fa fa-angle-right"></i></button>',
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
            }

            return config;
        }
    }
})();