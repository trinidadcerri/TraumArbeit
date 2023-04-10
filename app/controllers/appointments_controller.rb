class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :destroy]

  def index
    @appointments = Appointment.all
  end

  def new
    @job = Job.find(params[:job_id])
    @appointment = Appointment.new
  end

  def create
    @job = Job.find(params[:job_id])
    @appointment = Appointment.new(appointment_params)
    @appointment.job = @job
    @appointment.user = current_user
    @appointment.save!
      redirect_to calendar_path(@job, @appointment)
  end

  def show
  end

  def destroy
    @appointment.destroy
    redirect_to calendar_path, status: :see_other
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:date, :name, :job_id, :user_id)
  end
end
