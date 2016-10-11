class UsersController < ApplicationController
  
  def edit
  	@user=User.find(params[:format])
  end	

  def update
  	@user=User.find(params[:format])
    @user.update(params_update)
    if @user.save
      redirect_to :root
      flash[:notice]="Muchas gracias por elegirnos, esperamos que sea de su agrado"
    else
      redirect_to user_edit_path(@user.id)
      flash[:notice]="Por favor complete todos los campos obligatorios (*)"
    end
  end
  
  def signup_edit
    @user=User.find(params[:format])
    nombre=@user.nombre
  end

  def signup_update
    @user=User.find(params[:format])
    @user.update(params_update)
    if @user.save
      redirect_to :root
      flash[:notice]="Muchas gracias por elegirnos, esperamos que sea de su agrado"
    else
      redirect_to user_signup_edit_path(@user.id)
      flash[:notice]="Por favor complete todos los campos obligatorios (*)"
    end
  end

  def params_update
    params.require(:user).permit(:nombre, :apellido, :apodo, :fecha_nacimiento, :sexo, :hincha, :localidad, :provincia, :pais, :telefono, :foto)
  end 
end
