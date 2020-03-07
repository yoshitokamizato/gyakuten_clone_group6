class VideoEditsController < ApplicationController
  def index
    @movies = VideoEdit.all
  end
end
