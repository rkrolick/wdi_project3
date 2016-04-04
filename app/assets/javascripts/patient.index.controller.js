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
  };
    $('#activeButton').on('click', function(){
      console.log(vm.active);
});
}());
