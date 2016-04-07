(function(){
  angular
  .module("handOff")
  .controller("PatientCreateController", [
    "PatientFactory",
    "$stateParams",
    PatientCreateFunction
  ]);

  function PatientCreateFunction(PatientFactory, $stateParams){
    var vm = this;
    vm.create = PatientFactory.query();
  };
}());
//
// vm.firstName
// vm.lastName
// vm.dob
// vm.age
// vm.attending
// vm.room
// vm.dob
// vm.allergies
