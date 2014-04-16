'use strict';

/* Controllers */

var scheduleApp = angular.module('scheduleApp', []);

scheduleApp.controller('scheduleCtrl', ['$scope', '$http', function($scope, $http) {
  	$http.get('reqs/reqs.json').success(function(data) {
    $scope.reqs = data;
  }); 	
}]);