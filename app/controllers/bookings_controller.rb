class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
  end

  def show
    @beautician = Beautician.find(params[:beautician_id])
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
      
    end
    
  end

  def edit
  end

  def update
    @beautician = Beautician.find(params[:beautician_id])
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      flash[:alert] = 'Booking updated!'
      redirect_to beautician_booking_path(@beautician, @booking)
    else
      flash[:alert] = 'Booking not updated!'
    
      redirect_to beautician_booking_path(@beautician, @booking)
    end
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :time, :location)
  end
end
