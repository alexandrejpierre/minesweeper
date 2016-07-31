class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #30.07.2016: changed exception to null_session
  protect_from_forgery with: :null_session

#30.07.2016: added the authentication of the current user

private

def current_user
	if session[:user_id]
		@current_user ||= User.find(session[:user_id])
	end
end

helper_method :current_user

def authenticate_user!
	redirect_to login_path unless current_user
end

#30.07.2016: added the token-based authentication
def authenticate_token!
	authenticate_or_request_with_http_token do |token, options|
		@api_user = User.find_by(api_token: token)
	end
end


end

