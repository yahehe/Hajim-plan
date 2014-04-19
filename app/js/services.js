'use strict';

/* Services */

var scheduleServices = angular.module('scheduleServices', ['ngResource']);

scheduleServices.factory('Phone', ['$resource',
  function($resource){
    return $resource('phones/:phoneId.json', {}, {
      query: {method:'GET', params:{phoneId:'phones'}, isArray:true}
    });
 }]);
