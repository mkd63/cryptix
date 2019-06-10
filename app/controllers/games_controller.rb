class GamesController < ApplicationController
  def play
    @c_level = 1
    @add_question = Question.find(@c_level)
  end
end
