class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in

    def hello
      redirect_to controller: 'sessions', action: 'new' unless session[:username]
    end

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
      end
    
    def logged_in
      !!session[:user_id]
    end
end