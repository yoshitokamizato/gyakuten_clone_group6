class AwsLecturesController < ApplicationController
  before_action :if_not_admin, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  def index
    @lectures = AwsLecture.all
  end

  def new
  end

  def show
    @lecture = AwsLecture.find(params[:id])
  end

  def edit
  end

  private
  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end

  def correct_user
    @lecture = current_user.aws_lectures.find_by(id: params[:id])
    redirect_to root_path if aws_lectures.nil?
  end

  def lecture_params
    params.require(:aws_lecture).permit(:title, :content)
  end
end
