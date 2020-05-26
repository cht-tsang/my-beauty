class BeauticiansController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
      @beauticians = Beautician.global_search(params[:query])
    else
      @beauticians = Beautician.all
    end
  end
end
