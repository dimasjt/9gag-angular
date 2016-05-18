angular.module('App').directive 'post', ->
  {
    restrict: 'E'
    replace: true
    template: JST['directives/post']

  }
