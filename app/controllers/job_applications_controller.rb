class JobApplicationsController < ApplicationController
  before_action :set_app, only: %i[show destroy]

  def index
    all_jobs = current_user.jobs.includes(:job_applications)
    @jobs = all_jobs.reject do |job|
      job.job_applications.empty?
    end
  end

  def show
    @job_application = JobApplication.find(params[:id])
    @job = @job_application.job
  end

  def create
    @job = Job.find(params[:job_id])
    @app = @job.job_applications.new(user: current_user)
    if @app.save
      redirect_to job_application_path(@app)
    else
      render 'job_applications/show', status: :unprocessable_entity
    end
  end

  def accept
    @app = JobApplication.find(params[:id])
    @app.status = "accepted"
    @app.save
    redirect_to job_applications_path
  end

  def decline
    @app = JobApplication.find(params[:id])
    @app.status = "declined"
    @app.save
    redirect_to job_applications_path
  end

  def destroy
    @app.destroy
  end

  private

  def app_params
    params.require(:app).permit(:status)
  end

  def set_app
    @favorite = JobApplication.find(params[:id])
  end

end
