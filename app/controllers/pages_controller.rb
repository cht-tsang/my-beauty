class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @treatments = Treatment.all
  end

  def account
    @user = current_user
    if @user.beauticians.present?
      redirect_to beautician_treatments_path
    end
    @bookings = Booking.where(user: @user)
  end

end
