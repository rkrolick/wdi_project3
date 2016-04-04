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
  };
    $('#activeButton').on('click', function(){
      console.log(vm.active);
});
}());
