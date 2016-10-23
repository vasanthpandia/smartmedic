module Accessible
  extend ActiveSupport::Concern

  protected

  def check_user
    flash.clear
    if current_doctor
      redirect_to(doctor_dashboard_path) && return
    elsif current_shopper
      redirect_to(patient_dashboard_path) && return
    end
  end
end