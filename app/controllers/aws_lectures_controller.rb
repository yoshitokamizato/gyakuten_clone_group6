class AwsLecturesController < ApplicationController
  def index
    @lectures = AwsLecture.all
  end

  def show
    @lecture = AwsLecture.find(params[:id])
  end


end
