class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def complete
		@post = Post.find(params[:id])
		@post.done = 1
		@post.save
		redirect_to root_path
	end

	def incomplete
		@post = Post.find(params[:id])
		@post.done = 0
		@post.save
		redirect_to root_path
	end

	def create
		@post = Post.new(post_params)
		@post.done = 0
		@post.save
		redirect_to root_path
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to root_path
	end

	private
		def post_params
			params.require(:post).permit(:body)
		end
end
