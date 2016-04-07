"use strict";

(function(){
  angular
  .module("handOff")
  .factory("VitalFactory",[
    "$resource",
    VitalFactoryFunction
  ]);

  function VitalFactoryFunction($resource){
    return $resource("/patients/:patient_id/visits/:visit_id/vitals/:id", {}, {
      update: {method: "PUT"}
    });
  }
}());
