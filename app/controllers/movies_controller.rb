class MoviesController < ApplicationController
  def index
    @movies = Movie.page(params[:page]).per(10)
    @base_level = Movie.base_level(params[:page])
  end
end
