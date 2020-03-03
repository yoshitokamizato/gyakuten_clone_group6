class SolutionsController < ApplicationController
  def create
    question = Question.find(params[:question_id])
    question.solutions.create!(solution_params)
    redirect_to question
  end

  private
  def solution_params
    params.require(:solution).permit(:answer).merge(params.permit(:question_id))
  end
end
