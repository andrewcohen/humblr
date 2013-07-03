class Humblr.Views.Post extends Backbone.View
  el: "#post"
  template: JST['posts/show']

  render: ->
    this.$el.html(@template(post: @model))
    @

