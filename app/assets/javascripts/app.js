//= require angular
//= require angular-resource
//= require angular-ui-router.min

"use strict";

(function(){
  angular
  .module("handOff",[
    "ngResource",
    "ui.router"
  ])
  .config([
    "$stateProvider",
    RouterFunction
  ]);

  function RouterFunction($stateProvider){
    $stateProvider
    .state("Home", {
      url: "/",
      templateUrl: "ng-views/homepage.html",
      controller: "PatientIndexController",
      controllerAs: "vm"
    })
  }
})();
