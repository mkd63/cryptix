class GamesController < ApplicationController
  def play
    if(session[:user_id] != nil)
      user = UserDetail.find_by(id: session[:user_id])
      logger.debug "The level is #{user}"
      @c_level = user.level
      @question = Question.find_by(level: @c_level)
    else
      redirect_to '/login'
    end
  end
end
