class UserDetailsController < ApplicationController
  def reg

  end
  def show
    if(session[:user_id] != nil)
      logger.debug "The user is #{session[:user_id]}"
      @user_detail = UserDetail.find(session[:user_id])
    else
      redirect_to '/'
    end
  end
  def create
    @user_detail = UserDetail.new(user_detail_params)
    @user_detail.level = 0
    @user_detail.last_answered = "2019-02-21 00:00:00"
    @user_detail.save
    redirect_to '/'
  end
  def user_detail_params
    params.require(:user_detail).permit(:name, :email, :username, :contactno, :password)
  end
  def leaderboard
    @users = UserDetail.all.order("level DESC, last_answered ASC")
  end
end
