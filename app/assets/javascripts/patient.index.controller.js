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
    var vm = this;
    vm.patients = PatientFactory.query();
    vm.active = 0;
    vm.setActivePatient = function(pat) {
      vm.activePatient = pat
    };
    vm.test = function(){
      console.log(vm.hide)
    }
  };
}());
