class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    
  end

  def create
  end

  def edit
  end

  def update
    @booking = Booking.find(params[:id])
  end

  def destroy
  end

  private

  def booking_params
  end
end
