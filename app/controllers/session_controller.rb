class SessionController < ApplicationController

    before_action :already_logged_in, only: [:new, :create]

    def new

    end

    def create
        user = User.find_by(name: params[:session][:name])
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            flash[:success] = "Logged in successfully"
            redirect_to root_path
        else
            flash.now[:error] = "There was something wrong with your login"
            render 'new'
        end
    end
    def destroy
        session[:user_id] = nil
        flash[:success] = "Logged out"
        redirect_to login_path
    end
end