class BeauticiansController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    
    if params[:query].present?
      @beauticians = Beautician.global_search(params[:query])
      respond_to do |format|
        format.js
      end
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
        redirect_to beautician_path(@beautician)
      else
        render :new
      end
  end

  def show
    @beautician = Beautician.find(params[:id])
  end

  private

  def beautician_params
    params.require(:beautician).permit(:name, :location, :description, :banner_photo, portfolio_photos: [] )
  end

end
