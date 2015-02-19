class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def authorize
    redirect_to signin_path if @current_user.nil?
  end

  def logout
    session[:user_id].clear
  end

  helper_method :current_user

end
