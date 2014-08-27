(function () {
  "use strict";

  angular.module("app").controller("customersCtrl", function($scope, $http){
    $scope.page = 1;
    $scope.init = function(stuff){
      $scope.customers = stuff.customers;
    };
    function getData(){
    $http.get("/api/v1/customers?page=" + $scope.page).then(function(response){
    $scope.customers = response.data;
    })};
    getData();
    $scope.next = function(click){

      if(click === "next"){
      $scope.page += 1;
      pageCheck();
      getData();
      }else if(click ==="prev"){
      $scope.page -= 1;
      getData();
      pageCheck();
      };
    };  
  function pageCheck(){
    if($scope.page === 0){
      $scope.page = 1
    }else if($scope.page === 6){
      $scope.page = 5
    };
  };




  });
})();
