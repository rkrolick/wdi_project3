"use strict";

(function(){
  angular
  .module("handOff")
  .factory("RxFactory",[
    "$resource",
    RxFactoryFunction
  ]);

  function RxFactoryFunction($resource){
    return = $resource("http://localhost:3000/patients/:patient_id/visits/:visit_id/rxs/:id", {}, {
      update: {method: "PUT"}
    });
  }
})
