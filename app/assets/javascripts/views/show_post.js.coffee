class App.Views.ShowNote extends Backbone.View 

	template: JST['notes/show']

	className: 'post'

	render: -> 
		@$el.html( @template( post: @model ) )

		