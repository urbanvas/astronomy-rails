class SessionsController < ApplicationController
    def new
    end
  
    def create
      if auth_hash
        @user = User.find_or_create_by_omniauth(auth_hash)
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        if @user = User.find_by(username: params[:username])
          if @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
          else
            return redirect_to(controller: 'sessions', action: 'new') if !params[:username] || params[:username].empty?
          end
        end
      end
    end
  
    def destroy
      session.delete :user_id
      redirect_to controller: 'application', action: 'hello'
    end

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def auth_hash
      request.env['omniauth.auth']
    end
end