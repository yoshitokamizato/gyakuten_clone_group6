class AwsLecturesController < ApplicationController
  before_action :if_not_admin, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  def index
    @lectures = AwsLecture.all
  end

  def show
    @lecture = AwsLecture.find(params[:id])
  end

  def new
    @lecture = AwsLecture.new
  end

  def create
    current_user.aws_lectures.create!(lecture_params)
    if @lecture.save
      redirect_to "/aws_lectures",success: "投稿完了"
    else
      flash.now[:alert] = "記入のないところがあります。確認して下さい。"
      render :new
    end
  end

  def edit
    @lecture
  end

  def update
    @lecture.update(lecture_params)
    redirect_to "/aws_lectures"
  end

  def destroy
    @lecture.destroy
    redirect_to "/aws_lectures"
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
