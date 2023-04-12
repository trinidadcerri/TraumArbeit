class ChatroomsController < ApplicationController

  def index
    @chatrooms = Chatroom.all
    @job_ids = @chatrooms.map {|chatroom| JobApplication.where(id:chatroom.job_application.id)[0]}.pluck(:job_id)
    @user_ids = Job.where(id: @job_ids).pluck(:user_id)
    @usersX = User.where(id: @user_ids)[0]
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
