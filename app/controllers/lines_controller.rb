class LinesController < ApplicationController
  def index
    @articles = Line.all
  end

  def show
    @article = Line.find(params[:id])
  end
end
