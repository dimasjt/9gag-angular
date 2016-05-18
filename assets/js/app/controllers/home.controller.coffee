angular.module("App").controller 'HomeController', [
  '$scope'
  'Restangular'
  ($scope, Restangular) ->
    $scope.sources = [
      {src: "http://static.videogular.com/assets/videos/videogular.mp4", type: "video/mp4"}
    ]

    $scope.home = true
    Restangular.one('hot').get().then (result)->
      $scope.posts = result.data
      $scope.nextPage = result.paging.next

    $scope.next = ()->
      Restangular.one('hot/' + $scope.nextPage).get().then (result)->
        $scope.posts = _.concat $scope.posts, result.data
        $scope.nextPage = result.paging.next
]
