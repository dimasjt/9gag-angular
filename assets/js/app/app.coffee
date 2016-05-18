app = angular.module("App", [
  'ui.router'
  'restangular'
  'nprogress'
  'ngCookies'
  'ui.router.title'
])

app.config [
  '$stateProvider'
  '$urlRouterProvider'
  'RestangularProvider'
  ($stateProvider, $urlRouterProvider, RestangularProvider) ->
    $stateProvider.state('home',
      url: "/"
      template: JST['section']
      controller: 'HomeController'
    ).state('section',
      url: '/:section/:id'
      template: JST['section']
      controller: 'SectionController'
      resolve: {
        section: [
          '$stateParams'
          ($stateParams)->
            $stateParams.section
        ]
        $title: (section)->
          'Section ' + section.capitalize()
      }
    )

    $urlRouterProvider.otherwise '/'

    RestangularProvider.setBaseUrl('http://infinigag.k3min.eu')
]
