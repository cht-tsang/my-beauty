class BeauticiansController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @beauticians = Beautician.all
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


end
