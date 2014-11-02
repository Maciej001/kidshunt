# assets/javascript/kidshunt.js.coffee

# Main App

window.KidsHunt = 
	Models: {}
	Collections: {}
	Views: {}
	Routers: {}

	initialize: ->
		grab collection of posts
		create and render view

window.App = window.KidsHunt

# Initialize application when document loads

$ ->
	App.initialize()

	

