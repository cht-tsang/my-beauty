class OrdersController < ApplicationController
  def show
    @order = current_user.orders.find(params[:id])
  end

  def create
    booking = Booking.find(params[:booking_id])
    order  = Order.create!(booking: booking, booking_sku: "1", amount: booking.treatment.cost, state: 'pending', user: current_user)
    

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: order.booking_sku,
        # images: [booking.photo_url],
        amount: order.amount_cents,
        currency: 'gbp',
        quantity: 1
      }],
      success_url: order_url(order),
      cancel_url: order_url(order)
    )

    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end
end
