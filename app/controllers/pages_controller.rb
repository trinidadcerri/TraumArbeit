class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def employer_index
    @users = User.all
  end

  def candidates_show
    @user = User.find(params[:id])
  end

  def dashboard
    @favorites = Favorite.where(user: current_user)
  end

  def employer_profile
    # @jobs = Job.where(user: current_user)
    # @appointments = Appointment.where(user: current_user)
  end
end
