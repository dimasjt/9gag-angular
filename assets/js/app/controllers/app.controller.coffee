angular.module("App").controller 'AppController', [
  '$rootScope'
  '$stateParams'
  ($rootScope, $stateParams) ->
    $rootScope.$stateParams = $stateParams
]
