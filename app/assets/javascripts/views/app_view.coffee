class Humblr.Views.AppView extends Backbone.View
  el: "#app_container"
  initialize: ->

  render: ->
    Humblr.Posts.render()
