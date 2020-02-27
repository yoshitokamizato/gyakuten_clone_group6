class SolutionsController < ApplicationController

  def create
    @question = Question.find(params[:question_id])
    @solution = @question.solutions.create(answer: params[:answer])
    redirect_to @question
  end


  private

  def solution_params
    params.require(:solution).permit(:answer)
  end

end
