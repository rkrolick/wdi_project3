"use strict";

(function(){
  angular
  .module("handOff")
  .controller("PatientIndexController", [
    "PatientFactory",
    "VisitFactory",
    "$resource",
    PatientControllerFunction
  ]);

  function PatientControllerFunction(PatientFactory, VisitFactory){
    var vm = this;
    vm.patients = PatientFactory.query();
    vm.active = 0;
    vm.setActivePatient = function(pat) {
      vm.activePatient = pat
      vm.visits = VisitFactory.query({patient_id: vm.activePatient.id});
      console.log(vm.visits);
    };
    vm.test = function(){
      console.log(vm.hide)
    }
  };
}());
