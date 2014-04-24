'use strict';

/* Controllers */

function updateMajor(newMajor) { currentMajor = newMajor; };
var scheduleControllers = angular.module('scheduleControllers', []);

scheduleControllers.controller('PhoneListCtrl', ['$scope', 'Phone',
  function($scope, Phone) {
    $scope.phones = Phone.query();
    $scope.orderProp = 'age';
  }]);


scheduleControllers.controller('scheduleCtrl', ['$scope', '$http', 
  function($scope, $http) {
   

  $http.get('reqs/majors.json').success(function(data) {
    
    $scope.iter = 0;
    $scope.majors = data;
    $scope.reqsUrl = new Array();
  
    for (var i = 0; $scope.majors.length > i; i++) {
        $scope.iter = i;
        $scope.reqsUrl[i] = 'reqs/' + $scope.majors[i].name +'.json';
        console.log('i = ' + i  + ' '   + $scope.reqsUrl[i] + ' : success');
    };
   

  }); 

  for (var i = 0; $scope.iter >= i; i++) {
    console.log('i = ' + i   );
  };
 
 //$http.get($scope.reqsUrl[0]).success(function(data) { 
        //console.log('i = ' + i   );
        //console.log('i = ' + i  + ' '   + $scope.reqsUrl[i] + ' : success'  );
        //  $scope.reqs[$scope.majors[i].name] = data;         
  //});


}]); //controller end