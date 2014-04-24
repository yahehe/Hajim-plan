'use strict';

/* Controllers */

var currentMajor = 'ME';
function updateMajor(newMajor) { currentMajor = newMajor; }
var scheduleControllers = angular.module('scheduleControllers', []);

scheduleControllers.controller('PhoneListCtrl', ['$scope', 'Phone',
  function($scope, Phone) {
    $scope.phones = Phone.query();
    $scope.orderProp = 'age';
  }]);


scheduleControllers.controller('scheduleCtrl', ['$scope', '$http', 
  function($scope, $http) {
    //if($scope.majors === null) $scope.majors = 'ECE'; 
  
    var reqsUrl = 'reqs/' + currentMajor + '.json';
  	
    $http.get('reqs/majors.json').success(function(data) {
      $scope.majors = data;
    }); 
    
  	$http.get(reqsUrl).success(function(data) {
  		$scope.reqs = data;
  	});

}]);