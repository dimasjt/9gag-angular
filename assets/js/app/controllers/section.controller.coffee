angular.module("App").controller 'SectionController', [
  '$scope'
  'Restangular'
  '$stateParams'
  ($scope, Restangular, $stateParams) ->
    Restangular.one($stateParams.section + '/' + $stateParams.id).get().then (result)->
      $scope.posts = result.data
]
