Rails.configuration.stripe = {

  :publishable_key => "pk_test_iXwDTXol60fkcPkdHyJ6846m",

  :secret_key => "sk_test_x8kUPSMaX9jThcYOj7nLZga7"

}



Stripe.api_key = Rails.configuration.stripe[:secret_key]