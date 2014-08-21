(function () {
  "use strict";

  angular.module("app", []).controller("employeesCtrl", function($scope, $http){
    $http.get("/api/v1/employees").then(function(response){
    $scope.employees = response.data;

    })
    
  });

})();

