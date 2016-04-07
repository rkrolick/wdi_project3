"use strict";

(function(){
  angular
  .module("handOff")
  .factory("CbcFactory",[
    "$resource",
    CbcFactoryFunction
  ]);

  function CbcFactoryFunction($resource){
    return $resource("/patients/:patient_id/visits/:visit_id/cbcs/:id", {}, {
      update: {method: "PUT"}
    });
  }
}());
