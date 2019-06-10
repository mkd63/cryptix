class UserDetailsController < ApplicationController
  def reg

  end
  def show
    logger.debug "The user is #{session[:user_id]}"
    @user_detail = UserDetail.find(session[:user_id])
  end
  def create
    @user_detail = UserDetail.new(user_detail_params)
    @user_detail.save
    redirect_to '/login'
  end
  def user_detail_params
    params.require(:user_detail).permit(:name, :email, :username, :contactno, :password, :level => 1)
  end
end
