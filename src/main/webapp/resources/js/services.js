angular.module('someServices', []).factory('service1', function() {
    var x3 = function (i) {
        return i * 3;
    };

    return {x3: x3}
});
