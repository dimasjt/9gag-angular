angular.module('App').directive 'post', ->
  {
    restrict: 'E'
    replace: true
    template: JST['directives/post']
    scope: {
      post: '=post'
    }
    controller: [
      '$scope'
      '$sce'
      ($scope, $sce)->
        if $scope.post.media
          $scope.sources = [
            { src: $sce.trustAsResourceUrl($scope.post.media.mp4), type: 'video/mp4' }
            { src: $sce.trustAsResourceUrl($scope.post.media.webm), type: 'video/webm' }
          ]
    ]
  }
