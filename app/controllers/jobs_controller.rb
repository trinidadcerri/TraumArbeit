class JobsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_job, except: %i[index create new]
  before_action :check_jobseeker, only: %i[edit destroy new]

  def index
    if params[:query].present?
      @jobs = Job.search_by_position_and_address(params[:query])
    else
      @jobs = Job.all
    end
  end

  def show
    return unless current_user

    @favorite = Favorite.new
    @check_favorite = current_user.favorites.find_by(job: @job)
    @job_application = current_user.job_applications.find_by(job: @job)
  end

  def new
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

  def check_jobseeker
    redirect_to jobs_path, notice: "You are not authorized to access this page" if current_user.job_seeker
  end
end
