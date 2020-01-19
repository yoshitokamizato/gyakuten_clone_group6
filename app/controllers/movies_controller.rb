class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
  # newアクションを追加
  def new
    @movie = Movie.new
  end
end
