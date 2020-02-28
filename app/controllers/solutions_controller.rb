class SolutionsController < ApplicationController

  def new
    @question = Question.find(params[:question_id])
    @solution = Solution.new
  end

  def create
    Solution.create(solution_params)
    redirect_to controller: :questions, action: :show
  end

  private

  def solution_params
    params.require(:solution).permit(:answer).merge(question_id: params[:question_id])
  end

end
