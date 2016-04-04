"use strict";

(function(){
  angular
  .module("handOff")
  .factory("PatientFactory", [
    "$resource",
    PatientFactoryFunction
  ]);

  function PatientFactoryFunction($resource){
    return $resource("http://localhost:3000/patients/:id", {}, {
      update: {method: "PUT"}
    });
  }
}());
