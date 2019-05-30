class ApplicationController < ActionController::Base

  before_action :store_current_location, :unless => :devise_controller?

  protected
    def authenticate_admin!
      redirect_to root_path unless user_signed_in? && current_user.is_admin?
    end
    
  private
    def store_current_location
      store_location_for(:user, request.url)
    end

    def after_sign_out_path_for(resource)
      request.referrer || root_path
    end

end
