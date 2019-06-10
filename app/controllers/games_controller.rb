class GamesController < ApplicationController
  def play
    if(session[:user_id] != nil)
      logger.debug "The level is #{session[:user_id]}"
      user = UserDetail.find(session[:user_id])
      logger.debug "The level is #{user}"
      @level = user.level
      @question = Question.find_by(level: @level)
    else
      redirect_to '/login'
    end
  end
end
