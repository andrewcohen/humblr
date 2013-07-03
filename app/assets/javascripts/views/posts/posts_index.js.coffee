class Humblr.Views.PostsIndex extends Backbone.View
  el: "#posts_list"
  tagName: 'li'
  template: JST['posts/index']

  events:
    "click #refresh_posts": "refresh"
    "click #new_post": "newPost"
    "click a": "viewPost"

  initialize: ->
    @collection = Humblr.Posts = new Humblr.Collections.Posts
    @listenTo(@collection, 'all', @render)
    @collection.fetch()

  render: ->
    this.$el.html(@template(posts: @collection))
    @

  refresh: ->
    @collection.fetch()
    @render()

  newPost: ->
    view = new Humblr.Views.NewPost()
    view.render()

  viewPost: (e) ->
    e.preventDefault()
    id   = $(e.currentTarget).data("id")
    item = @collection.get(id)
    view = new Humblr.Views.Post(model: item)
    view.render()
