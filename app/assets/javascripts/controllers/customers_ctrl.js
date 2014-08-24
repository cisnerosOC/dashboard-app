(function () {
  "use strict";

  angular.module("app").controller("customersCtrl", function($scope, $http){
    $http.get("/api/v1/customers").then(function(response){
    $scope.customers = response.data;

    })
    
  });

})();

