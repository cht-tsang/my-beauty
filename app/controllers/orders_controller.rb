class OrdersController < ApplicationController
  booking = Booking.find(params[:booking_id])
  order  = Order.create!(booking: booking, booking_sku: booking.sku, amount: booking.price, state: 'pending', user: current_user)

  session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'],
    line_items: [{
      name: booking.sku,
      # images: [booking.photo_url],
      amount: booking.price_cents,
      currency: 'gbp',
      quantity: 1
    }],
    success_url: order_url(order),
    cancel_url: order_url(order)
  )

  order.update(checkout_session_id: session.id)
  redirect_to new_order_payment_path(order)
end
