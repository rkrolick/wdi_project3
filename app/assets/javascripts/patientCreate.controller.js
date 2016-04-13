(function(){
  angular
  .module("handOff")
  .controller("PatientCreateController", [
    "PatientFactory",
    "$stateParams",
    "$state",
    PatientCreateFunction
  ]);

  function PatientCreateFunction(PatientFactory, $stateParams, $state){
    this.patient = new PatientFactory();

    this.create = function(){
      this.patient.$save();
      // NHO: think you want this to happen only after the previous asynch save action has completed...
      $state.go("Home", {}, {reload: true});
    }
  }
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
