'use strict';

/* Controllers */

var scheduleControllers = angular.module('scheduleControllers', []);
function updateMajor(newMajor) { currentMajor = newMajor; };


scheduleControllers.controller('PhoneListCtrl', ['$scope', 'Major',
  function($scope, Major) {
    $scope.phones = Major.query();
    $scope.orderProp = 'age';
  }]);

scheduleControllers.controller('scheduleCtrl', ['$scope', '$http', 
  function($scope, $http) {
    $http.get('reqs/ECE.json').success(function(data) {
      $scope.reqs = data;
    });
    $http.get('reqs/majors.json').success(function(data) {
      $scope.majors = data;
    }); 
}]);