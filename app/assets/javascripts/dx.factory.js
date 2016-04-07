"use strict";

(function(){
  angular
  .module("handOff")
  .factory("DxFactory",[
    "$resource",
    DxFactoryFunction
  ]);

  function DxFactoryFunction($resource){
    return $resource("/patients/:patient_id/visits/:visit_id/dxs/:id", {}, {
      update: {method: "PUT"}
    });
  }
}());
