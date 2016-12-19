class ChargesController < ApplicationController
  
  def create
  	# this action is what actually performs the transaction.

		# Amount in cents
		@amount = 500

		customer = Stripe::Customer.create(
			:email => 'example@stripe.com',
			:card => params[:stripeToken]
		)

		charge = Stripe::Charge.create(
			:customer => customer.id,
			:amount => @amount,
			:description => 'Rails Stripe customer',
			:currency => 'usd'
		)

		rescue Stripe::CardError => e
		flash[:error] = e.message
		




  end

  def new
  
  end

end
