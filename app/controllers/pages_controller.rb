class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def employer_index
    @users = User.all
    if current_user.job_seeker == true
      redirect_to jobs_path, notice: "You are not authorized to access this page"
    end
  end

  def candidates_show
    @user = User.find(params[:id])
    if current_user.job_seeker == true
      redirect_to jobs_path, notice: "You are not authorized to access this page"
    end
  end

  def dashboard
    @favorites = Favorite.where(user: current_user)
  end

  def employer_profile
    # @jobs = Job.where(user: current_user)
    # @appointments = Appointment.where(user: current_user)
    if current_user.job_seeker == true
      redirect_to jobs_path, notice: "You are not authorized to access this page"
    end
  end
end
