"use strict";

(function(){
  angular.module("handOff",[
    "ngResource",
    "ui.router",
  ])
  .config([
    "$stateProvider",
    RouterFunction
  ]);

  function RouterFunction($stateProvider){
    $stateProvider
    .state("patientIndex", {
      url: "/patients",
      templateUrl: "app/views/patients/index.html.erb",
      controller: "patientController",
      controllerAs: "patientController"
    })
  }
}());
