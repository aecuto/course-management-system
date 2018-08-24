class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:firstname, :lastname, :nickname, :birthday, :gender, :instructor_role, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:firstname, :lastname, :nickname, :birthday, :gender, :email, :password, :password_confirmation, :current_password)
  end

end
