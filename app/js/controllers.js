'use strict';

/* Controllers */

var currentMajor = 'ME';
function updateMajor(newMajor) { currentMajor = newMajor; }
var scheduleControllers = angular.module('scheduleControllers', []);

scheduleControllers.controller('scheduleCtrl', ['$scope', '$http', 
  function($scope, $http) {
    $http.get('reqs/majors.json').success(function(data) {
      $scope.majors = data;
    }); 
}]);

scheduleControllers.controller('MajorDetailCtrl', ['$scope', '$routeParams', '$http',
  function($scope, $routeParams, $http) {
  	//console.log($routeParams);
  	$scope.params = $routeParams;
  	$http.get('reqs/majors.json').success(function(data) {
      $scope.majors = data;
    }); 
    $http.get('reqs/' + $scope.params.currentMajor + '.json').success(function(data) {
      $scope.reqs = data;
    });
  }]);
