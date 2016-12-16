class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  before_filter :categories, :brands

  def configure_permitted_parameters

  devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, 
     :password_confirmation, :role) }

  devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, 
     :password_confirmation, :current_password, :role) }
end

	def categories
		@categories = Category.all
	end	

	def brands
		@brands = Product.pluck(:brand).sort.uniq!
			if @brands == nil
				@brands = Product.pluck(:brand).sort
			end
				

	end	

end
