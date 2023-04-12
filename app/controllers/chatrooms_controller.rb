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
    @chatroom = Chatroom.new(chatroom_params)
  end

  private

  def chatroom_params
    params.require(:chatroom)
  end

end
