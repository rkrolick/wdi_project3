"use strict";

(function(){
  angular
  .module("handOff")
  .factory("VisitFactory", [
    "$resource",
    VisitFactoryFunction
  ]);

  function VisitFactoryFunction($resource){
    return $resource("http://localhost:3000/patients/:patient_id/visits/:id", {}, {
      update: {method: "PUT"}
    });
  }
}());
