angular.module('productsApp', [])
    .controller('productsCtrl', function ($scope, $http) {
        $scope.getTopProducts = function() {
            $http.get("/api/Product/GetTopProducts/10").success(function (data) {
                $scope.topProducts = data;
            }).error(function () {
                alert("Oops... something went wrong");
            });
        }
    });