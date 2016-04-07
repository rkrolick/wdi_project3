"use strict";

(function(){
  angular
  .module("handOff")
  .factory("ApiFactory",[
    "$resource",
    ApiFactoryFunction
  ]);

  function ApiFactoryFunction($resource){
    return $resource("/dx/:query", {}, {
      update: {method: "PUT"}
    });
  }
}());
