class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.beautician = @booking.treatment.beautician
    @review.booking = @booking
    @review.user = current_user
    if @review.save
      redirect_to booking_path(@booking)
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
