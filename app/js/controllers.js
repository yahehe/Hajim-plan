'use strict';

/* Controllers */

var scheduleControllers = angular.module('scheduleControllers', []);
var currentMajor = 'ME';

scheduleControllers.controller('PhoneListCtrl', ['$scope', 'Phone',
  function($scope, Phone) {
    $scope.phones = Phone.query();
    $scope.orderProp = 'age';
  }]);

scheduleControllers.controller('majorCtrl', ['$scope', '$http', 
  function($scope, $http) {
  	$http.get('reqs/majors.json').success(function(data) {$scope.majors = data;}  ); 	
}]);

scheduleControllers.controller('scheduleCtrl', ['$scope', '$http', 
  function($scope, $http) {
  	//if($scope.majors === null) $scope.majors = 'ECE'; 
  
  	var reqsUrl = 'reqs/' + currentMajor + '.json';
  	$http.get(reqsUrl).success(function(data) {
  		$scope.reqs = data;
  	}); 	
}]);