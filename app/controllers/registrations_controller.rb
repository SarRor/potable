class RegistrationsController < Devise::RegistrationsController

 # Para regresar a la anterior página después de 'sign up'
 protected
   def after_sign_up_path_for(resource)
     request.referrer || root_path
   end

   def after_inactive_sign_up_path_for(resource)
     request.referrer || root_path
   end

   def after_update_path_for(resource)
     request.referrer || root_path
   end

 # Para agregar el campo nombre
 private
   def sign_up_params
     params.require(:user).permit(:nombre, :username, :provider, :uid, :email, :password, :password_confirmation)
   end
   def account_update_params
     params.require(:user).permit(:nombre, :username, :provider, :uid, :email, :password, :password_confirmation, :current_password)
   end

end
