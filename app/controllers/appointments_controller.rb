class AppointmentsController < ApplicationController

  before_filter :authenticate_user!
  before_filter :find_appointment, except: :create

  def create
    appointment = current_user.appointments.new(appointment_params)
    if appointment.save
      redirect_to appointment, notice: "Appointment added successfully"
    else
      redirect_to :dashboard_path, error: "Error creating Appointment"
    end
  end

  def show
    @prescription = @appointment.prescription
  end

  def edit

  end

  def destroy
    if @appointment.destroy
      redirect_to dashboard_path, notice: 'Appointment Deleted'
    else
      redirect_to dashboard_path, error: 'Error deleting appointment'
    end
  end

  private

  def find_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:start_time, :duration, :patient)
  end
end
