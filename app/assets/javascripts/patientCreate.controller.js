(function(){
  angular
  .module("handOff")
  .controller("PatientCreateController", [
    "PatientFactory",
    "$stateParams",
    PatientCreateFunction
  ]);

  function VisitCreateFunction(PatientFactory, $stateParams){
    var vm = this;
    vm.create = PatientFactory();
  };
}());

vm.firstName
vm.lastName
vm.dob
vm.age
vm.attending
vm.room
vm.dob
vm.allergies
