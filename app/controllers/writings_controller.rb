class WritingsController < ApplicationController
  def index
    @movies = Writing.all
  end
end
