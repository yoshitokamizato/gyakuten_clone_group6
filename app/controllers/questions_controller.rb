class QuestionsController < ApplicationController
  protect_from_forgery

  def index
    @questions = Question.all
    @questions = Question.all.order(id: "DESC")
  end

  def new
    @question = Question.new
  end

  def create
    Question.create!(question_params)
    redirect_to "/questions"
  end

  def show
    @question = Question.find(params[:id])
    @solutions = @question.solutions
  end


  private

  def question_params
    params.require(:question).permit(:title, :content)
  end
end
