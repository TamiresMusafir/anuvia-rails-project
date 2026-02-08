class Admin::UsersController < Admin::AdminController
    before_action :authenticate_user!

  def profile
    @user = current_user
  end

  def update_profile
    @user = current_user
    if @user.update(user_params)
      redirect_to admin_profile_path, notice: "Perfil atualizado com sucesso"
    else
      flash.now[:alert] = "Erro ao atualizar perfil"
      render :profile, status: :unprocessable_entity
    end
  end

  private

  def user_params
    # Campos que o usuário pode atualizar
    params.require(:user).permit(:email, :password, :password_confirmation, :image, :name)
  end
end