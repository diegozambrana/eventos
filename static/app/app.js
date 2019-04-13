var dependencies = ['ngRoute']

angular.module('main', dependencies)
    .controller("myCtrl", myCtrl)
    .factory("myService", myService)
    
    .config(['$locationProvider', '$httpProvider', '$interpolateProvider', 
            function($locationProvider ,$httpProvider, $interpolateProvider){
                $interpolateProvider.startSymbol('{/');
                $interpolateProvider.endSymbol('/}');
                $httpProvider.defaults.xsrfCookieName = 'csrftoken';
                $httpProvider.defaults.xsrfHeaderName = 'X-CSRFToken';
                $locationProvider.html5Mode(true);
            }]);
