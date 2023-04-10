class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :destroy]

  def index
    @appointments = Appointment.all
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @job = Job.find(params[:job_id])
    @appointment.job = @job
    @appointment.user = current_user
    if @appointment.save!
      redirect_to job_appointment_path(@job, @appointment)
    else
      redirect_to "jobs/show", allow_other_host: true
    end
  end

  def show
  end

  def accept
    @appointment = Appointment.find(params[:id])
    @appointment.status = "accepted"
    @appointment.save
    redirect_to dashboard_path
  end

  def decline
    @appointment = Appointment.find(params[:id])
    @appointment.status = "declined"
    @appointment.save
    redirect_to dashboard_path
  end

  def destroy
    @appointment.destroy
    redirect_to dashboard_path, status: :see_other
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:date, :time, :job_id, :user_id)
  end
end
