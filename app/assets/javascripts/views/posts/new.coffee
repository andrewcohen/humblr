class Humblr.Views.NewPost extends Backbone.View
  el: "#content"
  template: JST['posts/new']

  events:
    "click #submit_post": "submitPost"

  render: ->
    console.log 'new post form'
    this.$el.html(@template)
    @

  newAttributes: ->
    title: $("form #title").val().trim()
    author: $("form #author").val().trim()
    body: $("form #post_body").val().trim()

  submitPost: (e) ->
    e.preventDefault()
    Humblr.Posts.create(@newAttributes())
    view = new Humblr.Views.Post(model: Humblr.Posts.last())
    view.render()
