class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

# show cancancan related error messages instead of generic rails errors
  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.html {redirect_to root_path, notice: exception.message}
    end
  end

  protected

  # strong parameters for Devise
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :cidery])
  end
end