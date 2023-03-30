class JobsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_job, only: [:show, :edit, :update, :destroy]
  def index
    if current_user.job_seeker == false
      redirect_to candidates_path, notice: "You are not authorized to access this page"
    end
    @jobs = Job.all
  end

  def show
    if current_user.job_seeker == false
      redirect_to candidates_path, notice: "You are not authorized to access this page"
    end
    @favorite = Favorite.new
  end

  private

  def set_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:position, :description, :salary, :level, :address, :jobdescription)
  end
end
