//=require angular
//= require angular-resource

"use strict";

(function(){
  angular
  .module("handOff",["ngResource","ui.router","patients.module"])
  .config(["$stateProvider",RouterFunction]);

  function RouterFunction($stateProvider){
    $stateProvider
    .state("patientIndex", {
      url: "/patients",
      templateUrl: "app/views/patients/index.html.erb",
      controller: "patientsIndexController",
      controllerAs: "patientsIndexViewModel"
    })
  }
}());
