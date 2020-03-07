class InformationsController < ApplicationController
  def index
    @movies = Information.all
  end
end
