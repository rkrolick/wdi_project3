"use strict";

(function(){
  angular
  .module("handOff")
  .factory("VisitFactory", [
    "$resource",
    VisitFactoryFunction
  ]);

  function VisitFactoryFunction($resource){
    return $resource("/patients/:patient_id/visits/:id", {}, {
      update: {method: "PUT"}
    });
  }
}());
