class SessionsController < ApplicationController

def index
end

def new
	@user = User.where(username: params[:username]).first
	if @user && @user.password == params[:password]
		sessions[:user_id] = @user.id
		redirect_to @user
       else 
       	redirect_to new_session_path
    end
end

def create
end

def destroy
end

