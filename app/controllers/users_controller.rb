class UsersController < ApplicationController
  def index
  end
end

def show
	@user = User.find(params[:id])
end

def new
	@user = User.new
end

def create
	@user = User.new(user_params)
	if @user.save
		 redirect_to user_path @user
		else
			redirect_to new_user_path
	end
end

def destroy
end

def edit
end



