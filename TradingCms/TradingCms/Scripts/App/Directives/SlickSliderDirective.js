(function () {
    'use strict';
    angular.module('productsApp')
        .directive('slickSlider', ['$timeout', 'sliderConfigService', initSlider]);

    function initSlider($timeout, sliderConfigService) {
        return {
            scope: { data: '=' },
            link: function (scope, element) {
                var isInitialized = false;
                scope.$watch('data', function (newVal) {
                    if (newVal && newVal.length > 0 && !isInitialized) {
                        $timeout(function () {
                            $(element).slick(sliderConfigService.topProductsConfig());
                            isInitialized = true;
                        });
                    }
                });
            }
        }
    }
})();