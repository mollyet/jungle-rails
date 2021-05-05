class UsersController < ApplicationController
  def new
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_ to "/"
    else
      redirect_to "/register"
    end
  end
  
  def create
  end
 private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end


end
