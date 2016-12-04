class PrescriptionsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_prescription, except: [:new, :create]

  def create
    @prescription = Prescription.create(prescription_params)
    if @prescription.errors.present?
      return redirect_to appointment_path(@prescription.appointment), error: 'Error Adding Prescription'
    end

    redirect_to prescription_path(@prescription.id), notice: 'Prescription created Successfully'
  end

  def show
    @drug = @prescription.drugs.new
    @drugs = @prescription.drugs
  end

  protected

  def find_prescription
    @prescription = Prescription.find(params[:id])
  end

  def prescription_params
    params.require(:prescription).permit(:appointment)
  end
end
