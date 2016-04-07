"use strict";

(function(){
  angular
  .module("handOff")
  .factory("PtpttFactory",[
    "$resource",
    PtpttFactoryFunction
  ]);

  function PtpttFactoryFunction($resource){
    return $resource("/patients/:patient_id/visits/:visit_id/ptptts/:id", {}, {
      update: {method: "PUT"}
    });
  }
}());
