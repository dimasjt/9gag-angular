app = angular.module("App", ['ui.router'])

app.config [
  '$stateProvider'
  '$urlRouterProvider'
  ($stateProvider, $urlRouterProvider) ->
    $stateProvider.state('home',
      url: "/"
      template: JST['app']
    ).state('post',
      url: '/post'
      template: JST['post']
      controller: 'AppController'
    )

    $urlRouterProvider.otherwise '/'
]
