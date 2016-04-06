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
    vm.labs = {cbcs: null, ptptts: null, bmps: null};
    vm.latestVisit = null;

    vm.setActivePatient = function(pat) {
      vm.activePatient = pat;
      vm.visits = VisitFactory.query({patient_id: vm.activePatient.id}).$promise.then(function(data){
        if (data.length > 0) {
          var i = data.length-1;
          vm.labs.cbcs = CbcFactory.query({patient_id: vm.activePatient.id, visit_id: data[i].id});
          vm.labs.ptptts = PtpttFactory.query({patient_id: vm.activePatient.id, visit_id: data[i].id});
          vm.labs.bmps = BmpFactory.query({patient_id: vm.activePatient.id, visit_id: data[i].id});
          vm.latestVisit = data[i];
        } else {
          vm.latestVisit = null;
        }
      });
    };
    vm.test = function(){
      console.log(vm.hide)
    }
  };
  vm.setActivePatient(vm.patients[vm.active]);
}());
