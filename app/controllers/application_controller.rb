class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?



  def configure_permitted_parameters
    added_attrs = %i[name username email password password_confirmation remember_me avatar]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

  def after_sign_in_path_for(resource)
    opinions_path
  end
end
