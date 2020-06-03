class BeauticianTreatmentsController < ApplicationController
  
  def index
    @beautician_treatments = current_user.beautician_treatments
  end

  def new
    @beautician_treatment = BeauticianTreatment.new
    @beautician = Beautician.find(params[:beautician_id])
  end

  def create
    @beautician_treatment = BeauticianTreatment.new(beautician_treatment_params)
    @beautician_treatment.treatment = Treatment.first
    @beautician_treatment.beautician = Beautician.find(params[:beautician_id])
    if @beautician_treatment.save
      redirect_to beautician_treatments_path
    else
      render :new
    end
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
