class PostsController < ApplicationController
	helper_method :posts, :post

	respond_to :json, only: [:index, :create, :update, :destroy]
	respond_to :html, only: [:index]

	def index 
		respond_with posts
	end

	def create
		note = Note.create notes_params
		respond_with note
	end

	def update
		post.update_attributes post_params

		respond_with( note ) do |format| 
			format.json { render json: note }
		end
	end

 	def destroy
 		respond_with post.destroy()
 	end

	def notes
		@notes ||= Note.all
	end

	def posts 
		@posts ||= Posts.all
	end

	def post
		@post ||= Post.find post_params
	end

	private

		def post_params
			params.permit :title, :tagline, :url
		end
end
