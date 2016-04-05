"use strict";

(function(){
  angular
  .module("handOff")
  .controller("VisitIndexController", [
    "VisitFactory",
    "$resource",
    VisitControllerFunction
  ]);

  function VisitControllerFunction(VisitFactory){
    var vm = this;
    vm.visits = VisitFactory.query();
  };
}());
