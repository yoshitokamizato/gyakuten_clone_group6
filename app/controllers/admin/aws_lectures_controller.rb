class Admin::AwsLecturesController < ApplicationController
  before_action :if_not_admin

  def new
    @lecture = AwsLecture.new
  end

  def create
    @lecture = AwsLecture.new(lecture_params)
    if @lecture.save
      redirect_to "/aws_lectures",success: "投稿完了"
    else
      flash.now[:alert] = "記入のないところがあります。確認して下さい。"
      render :new
    end
  end

  def edit
    @lecture = AwsLecture.find(params[:id])
  end

  def update
    @lecture = AwsLecture.find(params[:id])
    @lecture.update(lecture_params)
    redirect_to "/aws_lectures"
  end

  def destroy
    @lecture = AwsLecture.find(params[:id])
    @lecture.destroy
    redirect_to "/aws_lectures"
  end

  private
  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end

  def lecture_params
    params.require(:aws_lecture).permit(:title, :content)
  end
end
