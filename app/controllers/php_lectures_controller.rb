class PhpLecturesController < ApplicationController
  def index
    @movies = PhpLecture.all
  end
end
