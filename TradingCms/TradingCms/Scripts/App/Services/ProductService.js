(function () {
    'use strict';
    angular.module('productsApp')
        .factory('productsService', productsService);

    function productsService($http) {
        var service = {
            getTopProducts: getTopProducts
        }
        return service;

        function getTopProducts() {
            return $http.get("/api/Product/GetTopProducts/10");
        }
    }
})();