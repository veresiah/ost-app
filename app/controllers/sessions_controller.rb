class SessionsController < ApplicationController
    def new 
    end  

    def create
        user = User.find_by(email_address: params[:email_address])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to user_path(user), notice: "Login was successful"
        else 
            flash[:error] = "Invalid credentials"
            render "new"
        end 
    end 

    def create_using_facebook
        user = User.find_or_create_by(email_address: auth['email']) do |u|
            u.email = auth['info']['email']
            u.password = auth['info']['password']
        end 
        session[:user_id] = user.id
        redirect_to user_path(user), notice: "Login with Facebook was successful"
    end 
        
    def destroy 
        session.delete :user_id
        redirect_to login_path, notice: "Logged out successfully"
    end 

    private

    def auth
        request.env['omniauth.auth']
    end 
end 