
"use strict";

(function(){
  angular
  .module("handOff", ["ngResource"])
  .controller("patientController", PatientControllerFunction);
  PatientController.$inject = ["$resource"]
  function PatientControllerFunction($resource){
    var vm = this;
    vm.patients = $resource("/patients.json", {}, {
      update: {method: 'PUT'}
    });
    // vm.destroy = function(patient_index){
    //   var patient = vm.data[patient_index];
    //   Patient.remove({id: patient.id}, function(response){
    //     if(response.success) vm.data.splice(patient_index, 1);
    //   });
    // }
    vm.new_patient = {};
    vm.create = function(){
      Patient.save(vm.new_patient, function(response){
        vm.data.push(response);
        vm.new_patient = {};
      })
    }
  }
})();
