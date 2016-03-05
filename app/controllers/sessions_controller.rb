class SessionsController < ApplicationController
def index
	@users = User.all
end

def new	
	@user = User.new
end

def create
	@user = User.where(user_name: params[:user_name]).first
	if @user && @user.password == params[:password]
		sessions[:user_id] = @user.id
		redirect_to @user
       else 
       	redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end