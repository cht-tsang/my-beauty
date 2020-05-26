class BeauticiansController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @beauticians = Beautician.all
  end
end
