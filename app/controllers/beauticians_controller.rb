class BeauticiansController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
      @beauticians = Beautician.global_search(params[:query])
    else
      @beauticians = Beautician.all
    end
  end

  def new
    @beautician = Beautician.new
  end

  def create 
    @beautician = Beautician.new(beautician_params)
    @beautician.user = current_user
      if @beautician.save
        redirect_to beautician_path
      else
        render :new
      end
  end

  private

  def beautician_params
    params.require(:beautician).permit(:name, :location, :description, :photos)
  end

end
