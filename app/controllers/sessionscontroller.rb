class SessionsController < ApplicationController
    def new 
        @user = User.new 
    end 

    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to user_path(user), notice: "Login was successful"
        else 
            flash[:error] = "Invalid credentials"
            render "new"
        end 
    end 

    def destroy 
        session.delete('user_id')
        redirect_to signin_path, notice: "Logged out successfully"
    end 
end 