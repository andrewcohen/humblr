window.Humblr =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    Backbone.old_sync = Backbone.sync
    Backbone.sync = (method, model, options) ->
      new_opts = _.extend(
        beforeSend: (xhr) ->
          token = $('meta[name="csrf-token"]').attr('content')
          xhr.setRequestHeader('X-CSRF-Token', token)
      , options)
      Backbone.old_sync(method, model, new_opts)
    new Humblr.Views.PostsIndex()

$(document).ready ->
  Humblr.initialize()
