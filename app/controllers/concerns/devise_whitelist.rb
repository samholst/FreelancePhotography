module DeviseWhitelist
  extend ActiveSupport::Concern

  included do
    before_action :configure_permitted_parameters, if: :devise_controller?
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :address, :city, :state, :postal_code, :complete_address, :lat_lang])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :address, :city, :state, :postal_code, :complete_address, :lat_lang])
  end
end
