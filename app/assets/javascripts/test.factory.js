"use strict";

(function(){
  angular
  .module("handOff")
  .factory("TestFactory", [
    "$resource",
    TestFactoryFunction
  ]);

  function TestFactoryFunction($resource){
    return $resource("/patients/:patient_id/visits/:visit_id/.json"  , {}, {
      update: {method: "PUT"}
    });
  }
}());
