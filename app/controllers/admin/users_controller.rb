class Admin::UsersController < Admin::AdminController
    before_action :authenticate_user!

  def profile
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to admin_profile_path, notice: "Profille sucessfully updated"
    else
      flash.now[:alert] = "Cannot update profile"
      render :profile, status: :unprocessable_entity
    end
  end

  private

  def user_params
    # Campos que o usuário pode atualizar
    params.require(:user).permit(:email, :password, :password_confirmation, :image, :name)
  end
end