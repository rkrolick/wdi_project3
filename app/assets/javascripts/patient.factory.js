"use strict";

(function(){
  angular
  .module("patients")
  .factory("patientFactory", [
    "$resource",
    patientFactoryFunction
  ]);

  function patientFactoryFunction($resource){
    return $resource("http://localhost:3000/patients/:id", {}, {
      update: {method: "PUT"}
    });
  }
}());
