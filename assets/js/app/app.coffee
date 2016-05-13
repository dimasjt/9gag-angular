app = angular.module("App", [
  'ui.router'
  'restangular'
])

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
    ).state('section',
      url: '/:section/:id'
      template: JST['section']
      controller: 'SectionController'
    )

    $urlRouterProvider.otherwise '/'
]
