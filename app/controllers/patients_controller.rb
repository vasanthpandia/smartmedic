class PatientsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_patient

  def show
  end

  protected

  def find_patient
    @patient = Patient.where(id: params[:id]).last
  end
end
