class QuestionsController < ApplicationController
  protect_from_forgery
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    Question.create
  end

end
