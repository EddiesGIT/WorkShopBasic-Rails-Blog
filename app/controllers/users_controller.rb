class UsersController < ApplicationController
	 def index
	  	@users = User.all
	 end


	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		User.new(user_params)
		 redirect_to users_path	
	end
end
    
    def user_params
    	params.require(:user).permit(:first_name, :last_name, :birthday)
    end

	# def update
	# 	@user = User.find(params[id])
	# 	@user.update(params[:user])
	# 	redirect_to user_path
	# end

	# def destroy
	# 	@user = User.find(params[:id])
	# 	@user.destroy
	# 	redirect_to index_path
	# end


