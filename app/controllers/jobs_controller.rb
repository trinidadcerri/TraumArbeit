class JobsController < ApplicationController
  # before_action :set_job, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [ :index ]
  def index
    @jobs = Job.all
  end

  # def show
  # end

  # private

  # def set_job
  #   @job = Job.find(params[:id])
  # end

  # def job_params
  #   params.require(:kitchen).permit(:name, :address, :description, :price, :capacity, :photo)
  # end
end
