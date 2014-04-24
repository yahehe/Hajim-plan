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
    
    $scope.majors = data;
    $scope.reqsUrl = new Array();
  
    for (var i = 0; $scope.majors.length > i; i++) {
      
        $scope.reqsUrl[i] = 'reqs/' + $scope.majors[i].name +'.json';
        console.log('i = ' + i  + ' '   + $scope.reqsUrl[i] + ' : success'  );
        $http.get($scope.reqsUrl[i]).success(function($scope, data, i) { 
          console.log('i = ' + i  + ' '   + $scope.reqsUrl[i] + ' : success'  )
          //  $scope.reqs[$scope.majors[i].name] = data;         
        });

    };

  }); 
}]);