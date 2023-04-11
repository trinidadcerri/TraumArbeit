class JobApplicationsController < ApplicationController
  before_action :set_app, only: [:show, :destroy]

  def index
    # ids = Job.where(user: current_user).pluck(:user_id, :id)
    # # @my_applicants = JobApplication.where(job_id: @ids[0]).where(user_id: @ids[1])
    # @my_applicants = ids.map do |idArray|

    #   JobApplication.where(user_id: idArray[0]).where(job_id: idArray[1])
    # end
    @my_jobs = Job.where(user: current_user)
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
