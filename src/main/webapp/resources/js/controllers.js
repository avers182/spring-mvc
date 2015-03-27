var ngApp = angular.module('angApp', ['someServices']);

ngApp.controller('SomeController', ['$scope', 'service1', 'service2', function($scope, service1, service2) {
    $scope.counts = [
        {key: '1', value: 'one'},
        {key: '2', value: 'two'},
        {key: '3', value: 'three'}
    ];

    $scope.orderProp = 'key';

    $scope.someNumber = 0;

    $scope.x2 = function x2(i) {
        return i * 2;
    };

    $scope.x3 = function x3(i) {
        return service1.x3(i);
    };

    $scope.x4 = function (i) {
        return service2.x4(i);
    };
}]);

ngApp.factory('service2', function() {
    var x4 = function(i) {
        return i * 4;
    };

    return {x4: x4};
})
