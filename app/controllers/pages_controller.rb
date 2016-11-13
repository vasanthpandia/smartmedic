class PagesController < ApplicationController

  def home

  end

  def dashboard
    @appointments = current_user.appointments
    @appointment = Appointment.new
  end

  def profile
    @user = current_user
    @patients = @user.appointments.map { |appointment| appointment.patient }.uniq
  end
end
