class QuestionsController < ApplicationController
  protect_from_forgery
  def index
    @questions = Question.all
    @questions = Question.all.order(id: "DESC")
  end

  def create
    @question = Question.create!(question_params)
  end


private

  def question_params
    params.require(:question).permit(:title, :content)
  end

end
