class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @treatment = BeauticianTreatment.find(params[:beautician_treatment_id])
  
    @booking = Booking.new
  end

  def create
    @treatment = BeauticianTreatment.find(params[:beautician_treatment_id])
    @booking = Booking.new(booking_params)
    @booking.beautician_treatment = @treatment
    @booking.user = current_user
    # @booking.price = @booking.treatment.price
    if @booking.save
      flash[:alert] = 'Booking Started!'
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      flash[:alert] = 'Booking updated!'
      redirect_to booking_path(@booking)
    else
      flash[:alert] = 'Booking not updated!'

      redirect_to booking_path(@booking)
    end
  end

  def destroy
  end



  private

  def booking_params
    params.require(:booking).permit(:date, :time, :location)
  end
end
