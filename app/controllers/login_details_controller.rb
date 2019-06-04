class LoginDetailsController < ApplicationController
  def new
  end
  def create
    user = UserDetail.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = 'Successfully Logged In!'
      redirect_to '/cryptix'  
    else
      flash[:warning] = "Invalid Username or Password"
      redirect_to '/register'
    end
  end
  def profile

  end
  def destroy
  end
end
