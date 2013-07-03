class Humblr.Views.PostsIndex extends Backbone.View
  el: "#sidebar"
  template: JST['posts/index']

  events:
    "click #refresh_posts": "refresh"
    "click a": "viewPost"

  initialize: ->
    @collection = new Humblr.Collections.Posts
    @listenTo(@collection, 'all', @render)
    @collection.fetch()

  render: ->
    this.$el.html(@template(posts: @collection))
    @

  refresh: ->
    @collection.fetch()
    @render()

  viewPost: (e) ->
    e.preventDefault()
    id   = $(e.currentTarget).data("id")
    item = @collection.get(id)
    view = new Humblr.Views.Post(model: item)
    view.render()
