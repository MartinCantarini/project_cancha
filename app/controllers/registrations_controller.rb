class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:nombre, :apellido, :apodo, :sexo, :hincha, :telefono,:localidad, :provincia, :pais, :fecha_nacimiento, :foto, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:nombre, :apellido, :apodo, :sexo, :hincha, :telefono,:localidad, :provincia, :pais, :fecha_nacimiento, :foto, :email, :password, :password_confirmation, :current_password)
  end
end


