class App.Views.Posts extends Backbone.Views

	template: JST['posts/index']

	initialize: ->

	render: =>
		@$el.html @template()
		@collection.forEach @renderPost
		this

	renderPost: (post) ->
		view = new App.Views.ShowPost model: post, tagName: 'li'
		@$('.posts').append( view.render().el )