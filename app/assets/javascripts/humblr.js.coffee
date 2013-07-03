window.Humblr =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    Humblr.router = new Humblr.Routers.Posts()
    Backbone.history.start(pushState: true)
    new Humblr.Views.PostsIndex()

$(document).ready ->
  Humblr.initialize()
