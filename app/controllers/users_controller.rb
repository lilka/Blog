class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:username, :password, :email, :password_confirmation))
    if @user.save 
      redirect_to posts_path, notice: "Welcome #{@user.username}!"
    else
      render :new
    end
  end
end
