class PostsController < ApplicationController
	def index
	  	@posts = Post.where(user_id: session[:user_id])
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.create
		# (
		# 	post: params :title,:post,
		# 	user_id: session[:user_id]
		# 	 )
		
		if @post.save
			 redirect_to new_post_path
			else 
				new_session_path
			end
	end 

	def show
		@post = Post.find(params[:id])
		  @new_comment = Comment.new
		  redirect_to new_post_path
		end


	def destroy
	end

	def post_params
		params.require(:post).permit(:user_id, :title, :post)
	end
end 