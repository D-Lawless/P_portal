class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:username, :f_name, :l_name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:username, :f_name, :l_name, :about, :role, :email, :password, :password_confirmation, :current_password)
  end

end