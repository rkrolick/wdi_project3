

"use strict";

(function(){
  angular
  .module("handOff")
  .controller("PatientIndexController", [
    "PatientFactory",
    PatientControllerFunction
  ]);

  function PatientControllerFunction(PatientFactory){
    var vm = this;
    vm.patients = PatientFactory.query();
    // vm.destroy = function(patient_index){
    //   var patient = vm.data[patient_index];
    //   Patient.remove({id: patient.id}, function(response){
    //     if(response.success) vm.data.splice(patient_index, 1);
    //   });
    // }
    //vm.new_patient = {};
    vm.create = function(){
      Patient.save(vm.new_patient, function(response){
        vm.data.push(response);
        vm.new_patient = {};
      })
    }
  }
}());
