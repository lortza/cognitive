class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
    def require_signin
      unless current_user
        session[:intended_url] = request.url
        redirect_to new_session_url, notice: "Please sign in first!"
      end
    end

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end #current_user

    #make this method available for use in views
    helper_method :current_user

    def current_user?(user)
      current_user == user
    end #current_user?(user)
    helper_method :current_user?

    def current_user_admin?
      current_user && current_user.admin?
    end #current_user_admin?
    helper_method :current_user_admin?

end
