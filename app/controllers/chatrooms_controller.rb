class ChatroomsController < ApplicationController
  def index
    if current_user.job_seeker
      @chatrooms = Chatroom.where(applicant_name: current_user.first_name)
    else
      @chatrooms = Chatroom.where(employer_name: current_user.first_name)
    end
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def create
    @job_application = JobApplication.find(params[:job_application_id])
    @job = @job_application.job
    @chatroom = Chatroom.new(
      employer_name: @job.user.first_name, applicant_name: current_user.first_name,
      job_application: @job_application
    )
    if @chatroom.save
      redirect_to chatroom_path(@chatroom)
    else
      render 'job_applications/show'
    end
  end

  private

  def chatroom_params
    params.require(:chatroom)
  end
end
