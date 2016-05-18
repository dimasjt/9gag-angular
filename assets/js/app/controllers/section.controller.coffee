angular.module("App").controller 'SectionController', [
  '$scope'
  'Restangular'
  '$stateParams'
  '$state'
  ($scope, Restangular, $stateParams, $state) ->
    getPosts = $stateParams.section + '/' + $stateParams.id
    Restangular.one(getPosts).get().then ((result)->
      $scope.posts = result.data
      $scope.nextPage = result.paging.next
    ), (err)->
      $state.go('home')

    $scope.next = ()->
      Restangular.one(getPosts + "/" + $scope.nextPage).get().then (result)->
        $scope.posts = _.concat $scope.posts, result.data
        $scope.nextPage = result.paging.next

]
