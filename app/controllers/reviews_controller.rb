class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.beautician = @booking.beautician_treatment.beautician
    @review.booking = @booking
    @review.user_id = current_user.id
    if @review.save
      redirect_to beautician_path(@review.beautician)
    else
      flash[:alert] = "Something went wrong. Review did not save."
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to booking_path
  end

private

  def review_params
    params.require(:review).permit(:title, :content, :rating)
  end

end
