class PostsController < ApplicationController
	def index
		@posts = Post.all.order(created_at: "desc")
	end
	def new
		@post = Post.new
	end
	def create
		@post = Post.new(post_params)
		@post.save
		redirect_to posts_path
	end

	private
		def post_params
			params.require(:post).permit(:task)
		end
end
