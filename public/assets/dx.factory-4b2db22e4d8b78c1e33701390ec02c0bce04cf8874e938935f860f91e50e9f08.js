"use strict";

(function(){
  angular
  .module("handOff")
  .factory("DxFactory",[
    "$resource",
    DxFactoryFunction
  ]);

  function DxFactoryFunction($resource){
    return $resource("http://localhost:3000/patients/:patient_id/visits/:visit_id/dxs/:id", {}, {
      update: {method: "PUT"}
    });
  }
}());
