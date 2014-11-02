# assets/javascript/kidshunt.js.coffee

# Main App

window.KidsHunt = 
	Models: {}
	Collections: {}
	Views: {}
	Routers: {}

	initialize: ->
		@AllPosts = new @Collections.Posts( @postsJson )
		view = new @Views.Posts collection: @AllPosts
		$('#container').html( view.render().el )

		grab collection of posts
		create and render view

window.App = window.KidsHunt

# Initialize application when document loads

$ ->
	App.initialize()



