class AppointmentsController < ApplicationController

  before_filter :authenticate_user!

  def create

  end

  def edit

  end

  def destroy
    @appointment = Appointment.find(params[:id])
    if @appointment.destroy
      redirect_to dashboard_path, notice: 'Appointment Deleted'
    else
      redirect_to dashboard_path, error: 'Error deleting appointment'
    end
  end
end
