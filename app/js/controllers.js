'use strict';

/* Controllers */

var scheduleControllers = angular.module('scheduleControllers', []);

scheduleControllers.controller('PhoneListCtrl', ['$scope', 'Phone',
  function($scope, Phone) {
    $scope.phones = Phone.query();
    $scope.orderProp = 'age';
  }]);

scheduleControllers.controller('scheduleCtrl', ['$scope', '$http', 
  function($scope, $http) {
  	$http.get('reqs/reqs.json').success(function(data) {
  		$scope.reqs = data;
  	}); 	
}]);

majorControllers.controller('majorCtrl', ['$scope', '$http', 
  function($scope, $http) {
  	$http.get('reqs/majors.json').success(function(data) {
  		$scope.reqs = data;
  	}); 	
}]);