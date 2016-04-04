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
    .state("patientIndex", {
      url: "/patients",
      templateUrl: "app/views/patients/index.html.erb",
      controller: "PatientIndexController",
      controllerAs: "vm"
    })
  }
})();
