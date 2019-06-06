class LoginDetailsController < ApplicationController
  def new
  end
  def create
    user = UserDetail.find_by(email: params[:login_detail][:email].downcase)
    logger.debug "The user is #{user}, the email given is #{params[:login_detail][:email].downcase}"
    if user #&& user.authenticate(params[:login_detail][:password])
      session[:user_id] = user.id
      flash[:success] = 'Successfully Logged In!'
      redirect_to '/cryptix'
    else
      flash[:warning] = "Invalid Username or Password"
      redirect_to '/login'
    end
  end
  def profile

  end
  def destroy
  end
end
