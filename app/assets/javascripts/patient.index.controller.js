"use strict";

(function(){
  angular
  .module("handOff")
  .controller("PatientIndexController", [
    "PatientFactory",
    "$resource",
    PatientControllerFunction
  ]);

  function PatientControllerFunction(PatientFactory){
    this.patients = PatientFactory.query();
}
}());
