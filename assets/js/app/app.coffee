app = angular.module("App", [
  'ui.router'
  'restangular'
  'nprogress'
])

app.config [
  '$stateProvider'
  '$urlRouterProvider'
  'RestangularProvider'
  ($stateProvider, $urlRouterProvider, RestangularProvider) ->
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

    RestangularProvider.setBaseUrl('http://infinigag.k3min.eu')
]
