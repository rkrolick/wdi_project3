"use strict";

(function(){
  angular
  .module("handOff")
  .controller("VisitIndexController", [
    "VisitFactory",
    "$stateParams",
    VisitControllerFunction
  ]);

  function VisitControllerFunction(VisitFactory, $stateParams){
    var vm = this;
    vm.visits = VisitFactory.query({patient_id: $stateParams.patient_id});
  };
}());
