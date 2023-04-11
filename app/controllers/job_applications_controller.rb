class JobApplicationsController < ApplicationController
  before_action :set_app, only: [:show, :destroy]

  def index
    @apps = JobApplication.all
  end

  def show
    @job = Job.find(params[:job_id])
    @application = JobApplication.new(job: @job, user: current_user)

    @chatroom = Chatroom.new(name: @job.position)
    @chatroom.job_application = @application
    @chatroom.save
  end

  def create
    @app = JobApplication.new
    @job = Job.find(params[:job_id])
    @app.job = @job
    @app.user = current_user
    if @app.save
      redirect_to job_job_application_path(@job, @app)
    else
      render 'job_applications/show', status: :unprocessable_entity
    end
  end

  def accept
    @app = JobApplication.find(params[:id])
    @app.status = "accepted"
    @app.save
    redirect_to employer_profile_path
  end

  def decline
    @app = JobApplication.find(params[:id])
    @app.status = "declined"
    @app.save
    redirect_to employer_profile_path
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
