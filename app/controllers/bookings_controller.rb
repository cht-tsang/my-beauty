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
    # @beautician = beautician.find(params[:beautician_id])
    @booking = Booking.new(booking_params)
    
    @booking.user = current_user
    
    if @booking.save
      flash[:alert] = 'Booking Started!'
      redirect_to beautician_booking_path(@beautician, @booking)
    else
      render :new
    end
    
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
