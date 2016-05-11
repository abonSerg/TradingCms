(function () {
    'use strict';
    angular.module('productsApp', [])
        .controller('productsCtrl', ['$scope', '$http', 'productsService', productsCtrl]);

    function productsCtrl($scope, $http, productsService) {
        $scope.getTopProducts = function () {
            productsService.getTopProducts().success(function (data) {
                $scope.topProducts = data;
            }).error(function() {
                alert("Oops... something went wrong");
            });
        }
    }
})();