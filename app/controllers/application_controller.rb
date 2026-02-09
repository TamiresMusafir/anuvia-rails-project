class ApplicationController < ActionController::Base
  allow_browser versions: :modern
  helper_method :current_user

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def authenticate_user!
    redirect_to login_path, alert: "Log in to access the admin area." unless current_user
  end
end
