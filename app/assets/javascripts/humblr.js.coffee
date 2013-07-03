window.Humblr =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new Humblr.Views.PostsIndex()

$(document).ready ->
  Humblr.initialize()
