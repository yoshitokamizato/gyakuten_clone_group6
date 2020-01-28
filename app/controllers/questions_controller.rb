class QuestionsController < ApplicationController
  protect_from_forgery
  def index
    @questions = Question.all
  end

  def create
    @question = Question.create!(question_params)
  end

  def question_params
  params.require(:question).permit(:title, :content)
end

end
