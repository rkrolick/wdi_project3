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
    vm.activeLabs = {cbcs: null, ptptts: null, bmps: null};
    vm.activeLatestVisit = null;

    vm.setActivePatient = function(pat) {
      vm.activePatient = pat;
      vm.visits = VisitFactory.query({patient_id: vm.activePatient.id}).$promise.then(function(data){
        if (data.length > 0) {
          var i = data.length-1;
          vm.activeLabs.cbcs = CbcFactory.query({patient_id: vm.activePatient.id, visit_id: data[i].id})
            .$promise.then(function(data){var i = data.length-1; vm.activeLabs.cbc = data[i];});
          vm.activeLabs.ptptts = PtpttFactory.query({patient_id: vm.activePatient.id, visit_id: data[i].id})
            .$promise.then(function(data){var i = data.length-1; vm.activeLabs.ptptt = data[i];});
          vm.activeLabs.bmps = BmpFactory.query({patient_id: vm.activePatient.id, visit_id: data[i].id})
            .$promise.then(function(data){var i = data.length-1; vm.activeLabs.bmp = data[i];});
          vm.activeLatestVisit = data[i];
        } else {
          vm.activeLatestVisit = null;
        }
      });
    };
    vm.test = function(){
      console.log(vm.hide)
    }

    vm.init = function(){
      var p = PatientFactory.query().$promise.then(function(data){
        vm.setActivePatient(data[0]);
      })
    }

    vm.deleteActive = function(){
      console.log("TEST!!!");
    }
  };
}());
