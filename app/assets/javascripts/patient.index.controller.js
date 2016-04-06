"use strict";

(function(){
  angular
  .module("handOff")
  .controller("PatientIndexController", [
    "PatientFactory",
    "VisitFactory",
    "CbcFactory",
    "PtpttFactory",
    "BmpFactory",
    "$resource",
    PatientControllerFunction
  ]);

  function PatientControllerFunction(PatientFactory, VisitFactory, CbcFactory, PtpttFactory, BmpFactory){
    var vm = this;
    vm.patients = PatientFactory.query();
    vm.active = 0;
    vm.setActivePatient = function(pat) {
      vm.activePatient = pat;
      vm.visits = VisitFactory.query({patient_id: vm.activePatient.id}).then(function(data){
        // get the index of the most recent visit.
        var i = vm.visits.length-1;
        console.log(i);
      });
      //vm.labs.cbcs = CbcFactory.query({patient_id: vm.activePatient.id, visit_id: vm.visits[i].id});
      //vm.labs.ptptts = PtpttFactory.query({patient_id: vm.activePatient.id, visit_id: vm.visits[i].id});
      //vm.labs.bmps = BmpFactory.query({patient_id: vm.activePatient.id, visit_id: vm.visits[i].id});
      console.log(vm.labs);
    };
    vm.test = function(){
      console.log(vm.hide)
    }
  };
}());
