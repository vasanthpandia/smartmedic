class DrugsController < ApplicationController
    before_filter :authenticate_user!
  before_filter :find_prescritpion, except: [:new, :create]

  def create
    @drug = Drug.create(drug_params)
    if @drug.errors.present?
      return redirect_to prescription_path(@drug.prescription.id), error: 'Error adding drug to prescription'
    end

    redirect_to prescription_path(@drug.prescription.id), notice: 'Durg added to prescription'
  end

  def drug_params
    params.require(:drug).permit(:prescription, :name, :notes, :dose => [:morning, :afternoon, :evening])
  end
end
