"use strict";

(function(){
  angular
  .module("handOff")
  .factory("BmpFactory",[
    "$resource",
    BmpFactoryFunction
  ]);

  function BmpFactoryFunction($resource){
    return = $resource("http://localhost:3000/patients/:patient_id/visits/:visit_id/bmps/:id", {}, {
      update: {method: "PUT"}
    });
  }
})
