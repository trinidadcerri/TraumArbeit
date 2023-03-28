class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  def index
    @jobs = Job.all
  end

  def show
  end

  # def show
  # end

  private

  def set_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:position, :description, :salary, :price, :level, :address, :jobdescription)
  end
end
