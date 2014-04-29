'use strict';

/* App Module */

var scheduleApp = angular.module('scheduleApp', [
  'ngRoute',
  'scheduleControllers'
]);

scheduleApp.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
      when('/', {
        templateUrl: 'partials/start.html',
        controller: 'scheduleCtrl'
      })
      .when('/:currentMajor', {
        templateUrl: 'partials/major.html',
        controller: 'MajorDetailCtrl'
      })
      .otherwise({
        redirectTo: '/'
      })
  }]);

