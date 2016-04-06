"use strict";

(function(){
  angular
  .module("handOff")
  .factory("TestFactory", [
    "$resource",
    TestFactoryFunction
  ]);

  function TestFactoryFunction($resource){
    return $resource("http://localhost:3000/patients/:patient_id/visits/:visit_id/.json"  , {}, {
      update: {method: "PUT"}
    });
  }
}());
