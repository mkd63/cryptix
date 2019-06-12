class GamesController < ApplicationController
  $user
  $level
  def play
    if(session[:user_id] != nil)
      logger.debug "The level is #{session[:user_id]}"
      $user = UserDetail.find(session[:user_id])
      logger.debug "The level is #{$user}"
      $level = $user.level
      @question = Question.find_by(level: $level)
    else
      redirect_to '/login'
    end
  end
  def submit_answer
    @question = Question.find_by(level: $level)
    answer = @question.answer
    logger.debug "The answer given is #{params[:game][:answer]}"
    if(params[:game][:answer] == answer)
      logger.debug "The answer is correct"

      flash[:success] = "Right Answer!!"
      $user.level += 1
      $user.save
    else
      logger.debug "The answer is incorrect"
      flash[:error] = "Wrong Answer!!"

    end
  redirect_to '/play'
  end
end
