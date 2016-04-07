"use strict";

(function(){
  angular
  .module("handOff")
  .factory("PatientFactory", [
    "$resource",
    PatientFactoryFunction
  ]);

  function PatientFactoryFunction($resource){
    return $resource("/patients/:id.json", {}, {
      update: {method: "PUT"}
    });
  }
}());
