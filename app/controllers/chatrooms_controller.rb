class ChatroomsController < ApplicationController

  def index
    @chatrooms = Chatroom.all
    @job_application_ids = @chatrooms.map do |chatroom|
      chatroom.job_application_id
    end
    @avatars = User.all
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
