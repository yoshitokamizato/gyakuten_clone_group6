class PhpLecturesController < ApplicationController
  def index
    @php = PhpLecture.all
  end
end
