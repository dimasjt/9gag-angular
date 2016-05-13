angular.module("App").controller 'SectionController', [
  '$scope'
  ($scope) ->
    $scope.posts = [
      {
        "id": "aVPyOY8",
        "caption": "A non nsfw for once",
        "images": {
          "small": "http://img-9gag-fun.9cache.com/photo/aVPyOY8_220x145.jpg",
          "cover": "http://img-9gag-fun.9cache.com/photo/aVPyOY8_460c.jpg",
          "normal": "http://img-9gag-fun.9cache.com/photo/aVPyOY8_460s.jpg",
          "large": "http://img-9gag-fun.9cache.com/photo/aVPyOY8_700b.jpg"
        },
        "media": false,
        "link": "http://9gag.com/gag/aVPyOY8",
        "votes": {
          "count": 1
        },
        "comments": {
          "count": 0
        }
      },
      {
        "id": "aDoe01Z",
        "caption": "I tried XD",
        "images": {
          "small": "http://img-9gag-fun.9cache.com/photo/aDoe01Z_220x145.jpg",
          "cover": "http://img-9gag-fun.9cache.com/photo/aDoe01Z_460c.jpg",
          "normal": "http://img-9gag-fun.9cache.com/photo/aDoe01Z_460s.jpg",
          "large": "http://img-9gag-fun.9cache.com/photo/aDoe01Z_700b.jpg"
        },
        "media": false,
        "link": "http://9gag.com/gag/aDoe01Z",
        "votes": {
          "count": 1
        },
        "comments": {
          "count": 0
        }
      },
      {
        "id": "axjqNz1",
        "caption": "Industrial",
        "images": {
          "small": "http://img-9gag-fun.9cache.com/photo/axjqNz1_220x145.jpg",
          "cover": "http://img-9gag-fun.9cache.com/photo/axjqNz1_460c.jpg",
          "normal": "http://img-9gag-fun.9cache.com/photo/axjqNz1_460s.jpg",
          "large": "http://img-9gag-fun.9cache.com/photo/axjqNz1_700b.jpg"
        },
        "media": false,
        "link": "http://9gag.com/gag/axjqNz1",
        "votes": {
          "count": 2
        },
        "comments": {
          "count": 0
        }
      }
    ]
]
