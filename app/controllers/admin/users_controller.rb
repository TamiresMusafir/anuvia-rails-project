class Admin::UsersController < Admin::AdminController
    before_action :authenticate_user!

  def profile
    @user = current_user
  end

  def update_profile
    @user = current_user

    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to admin_profile_path, notice: "Profile updated" }
        format.json { render :profile, status: :update, location: @banner }
      else
        format.html { render :profile, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def user_params
    # Campos que o usuário pode atualizar
    params.require(:user).permit(:email, :password, :password_confirmation, :image, :name)
  end
end