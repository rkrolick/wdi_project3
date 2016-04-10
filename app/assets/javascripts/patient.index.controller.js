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
    "ApiFactory",
    "$state",
    "$resource",
    PatientControllerFunction
  ]);

  function PatientControllerFunction(PatientFactory, VisitFactory, CbcFactory, PtpttFactory, BmpFactory, ApiFactory, $state){
    var vm = this;
    vm.patients = PatientFactory.query();
    vm.active = 0;
    vm.activeLabs = {cbcs: null, ptptts: null, bmps: null};
    vm.activeLatestVisit = null;

    vm.setActivePatient = function(pat) {
      vm.activePatient = pat;
      vm.visits = VisitFactory.query({patient_id: vm.activePatient.id}).$promise.then(function(data){
        if (data.length > 0) {
          vm.activeLabs.cbcs = CbcFactory.query({patient_id: vm.activePatient.id, visit_id: data[0].id})
            .$promise.then(function(data){vm.activeLabs.cbc = data[0];});
          vm.activeLabs.ptptts = PtpttFactory.query({patient_id: vm.activePatient.id, visit_id: data[0].id})
            .$promise.then(function(data){vm.activeLabs.ptptt = data[0];});
          vm.activeLabs.bmps = BmpFactory.query({patient_id: vm.activePatient.id, visit_id: data[0].id})
            .$promise.then(function(data){vm.activeLabs.bmp = data[0];});
          vm.activeLatestVisit = data[0];
          console.log(vm.activeLatestVisit);
        } else {
          vm.activeLatestVisit = null;
        }
      });
    };

    vm.init = function(){
      var p = PatientFactory.query().$promise.then(function(data){
        vm.setActivePatient(data[0]);
      })
    }

    vm.deleteActive = function(){
      vm.activePatient.$delete({id: vm.activePatient.id})
      $state.go("Home", {}, {reload: true});
    }

    vm.apiCall = function(dx){
      vm.apiTest = ApiFactory.get({query: dx});
    };
  };
}());
