class SessionsController < ApplicationController
  def new
  end

  def create
    uoe = params.require(:username_or_email)
    user = User.where(email: uoe).or(User.where(username: uoe)).first
    if user&.authenticate(params.require(:password))
        session[:user_id] = user.id
        redirect_to posts_path, notice: "Welcome #{user.username}!"
    else
       redirect_to new_session_path, alert: "Incorrect email or password"
    end  
  end 

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Goodbay!"
  end   
end
