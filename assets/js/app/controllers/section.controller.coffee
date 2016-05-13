angular.module("App").controller 'SectionController', [
  '$scope'
  'Restangular'
  '$stateParams'
  ($scope, Restangular, $stateParams) ->
    getPosts = $stateParams.section + '/' + $stateParams.id
    Restangular.one(getPosts).get().then (result)->
      $scope.posts = result.data
      $scope.nextPage = result.paging.next

    $scope.next = ()->
      Restangular.one(getPosts + "/" + $scope.nextPage).get().then (result)->
        $scope.posts = _.concat $scope.posts, result.data
        $scope.nextPage = result.paging.next

]
