class UserDetailsController < ApplicationController
  def reg

  end
  def show
    @user_detail = UserDetail.find(params[:id])
  end
  def create
    @user_detail = UserDetail.new(user_detail_params)
    @user_detail.save
    redirect_to '/login'
  end
  def user_detail_params
    params.require(:user_detail).permit(:name, :email, :username, :contactno, :password)
  end
end
