class PagesController < ApplicationController

  def home

  end

  def dashboard
    @appointments = current_user.appointments
  end

  def profile
    @user = current_user
    @patients = @user.appointments.map { |appointment| appointment.patient }
  end
end
