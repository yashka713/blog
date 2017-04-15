class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone, :password, :password_confirmation,
                                 :avatar)
  end

  # for Devise update_params
  # def account_update_params
  #   params.require(:user).permit(:first_name, :last_name, :email, :phone, :password, :password_confirmation,
  #                                :current_password, :avatar, :remove_avatar, :avatar_cache)
  # end
end
