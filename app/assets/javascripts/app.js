//= require angular
//= require angular-resource
//= require angular-ui-router.min
window.nameofmodule = require('angular-camelcase-to-human')
"use strict";

(function(){
  angular
  .module("handOff",[
    "camelCaseToHuman",
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
    .state("Expanded", {
      url: "/:patient_id/expanded",
      templateUrl: "ng-views/expanded.html",
      controller: "VisitIndexController",
      controllerAs: "vm"
    })
    .state("Create", {
      url: "/create",
      templateUrl: "ng-views/createForm.html",
      controller: "PatientCreateController",
      controllerAs: "vm"
    })
  }
})();
