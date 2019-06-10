class AddQuestionsController < ApplicationController
  def index
  end
  def create
    @add_question = Question.new(question_params)
    @add_question.save
    redirect_to '/login'
  end
  def question_params
    params.require(:add_question).permit(:level, :question, :answer)
  end
end
