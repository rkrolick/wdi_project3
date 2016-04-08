"use strict";

(function(){
  angular
  .module("handOff")
  .factory("ApiFactory",[
    "$resource",
    ApiFactoryFunction
  ]);

  function ApiFactoryFunction($resource){
    return $resource("http://localhost:3000/dx/:query", {}, {
      update: {method: "PUT"}
    });
  }
}());
