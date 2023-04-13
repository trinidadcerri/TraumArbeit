class JobsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_job, only: [:show, :edit, :update, :destroy]
  def index
    if params[:query].present?
      @jobs = Job.search_by_position_and_address(params[:query])
    else
      @jobs = Job.all
    end
  end

  def show
    @favorite = Favorite.new
    @check_favorite = Favorite.find_by(job_id: @job.id, user_id: current_user.id)
    if @user.present?
      @job_application = JobApplication.all.where(user_id: current_user.id).where(job_id: @job.id)
    else
      nil
    end
  end

  def new
    if current_user.job_seeker == true
      redirect_to jobs_path, notice: "You are not authorized to access this page"
    end
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    @job.user = current_user
    if @job.save
      redirect_to candidates_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    if current_user.job_seeker == true
      redirect_to jobs_path, notice: "You are not authorized to access this page"
    end
  end

  def update
    if current_user == @job.user
      if @job.update(job_params)
        redirect_to @job, notice: 'Job position was successfully updated.'
      else
        render :edit, status: :unprocessable_entity
      end
    else
      redirect_to jobs_path, alert: 'You are not authorized to update this job.'
    end
  end

  def destroy
    if current_user.job_seeker == true
      redirect_to jobs_path, notice: "You are not authorized to access this page"
    end
    if current_user == @job.user
      @job.destroy
      redirect_to jobs_path, notice: 'Job position was successfully destroyed.'
    else
      redirect_to jobs_path, alert: 'You are not authorized to perform this action.'
    end
  end

  private

  def set_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:position, :description, :salary, :level, :address)
  end
end
