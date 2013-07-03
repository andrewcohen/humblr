class Humblr.Views.Post extends Backbone.View
  el: "#content"
  template: JST['posts/show']

  render: ->
    this.$el.html(@template(post: @model))
    @

