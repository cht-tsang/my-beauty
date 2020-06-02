class BeauticianTreatmentsController < ApplicationController
  
  def index
    @beautician_treatments = current_user.beautician_treatments
  end

  def edit
    @beautician_treatment = BeauticianTreatment.find(params[:id])
  end

  def update
    @beautician_treatment = BeauticianTreatment.find(params[:id])
    @beautician_treatment.update(beautician_treatment_params)
    redirect_to beautician_treatments_path
  end

  private

  def beautician_treatment_params
    params.require(:beautician_treatment).permit(:name, :description, :cost)
  end

end
