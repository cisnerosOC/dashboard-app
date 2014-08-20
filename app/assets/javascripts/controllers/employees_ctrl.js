(function () {
  "use strict";

  angular.module("app", []).controller("employeesCtrl" function($scope, $http){
    $http.get("/api/v1/employee").then(function(response){
    $scope.employees = response.data;

    })
    
  });

})();

 angular.module("app").controller("employeesCtrl", function ($scope, $http) {
    $scope.page = 1;

    $scope.init = function(stuff){
      $scope.employees = stuff.employees;

    }
    $scope.next = function(click){
      console.log(click)
      if(click === "next"){
      $scope.page += 1;
      getData();
      }else if(click ==="prev"){
      $scope.page -= 1;
      getData();
      };
    };  
    function getData(){
      $http.get("/api/employees?page=" + $scope.page).then(function (response) {
      $scope.employees = response.data;
      });
    };
    $http.get("/api/departments?").then(function (response) {
      $scope.departments = response.data;
    });

  });


})();