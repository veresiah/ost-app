class SessionsController < ApplicationController
    def new 
    end  

    def create
        @user = User.find_by(email: params[:email])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
            flash[:success] = "Login was successful"
        else 
            flash[:error] = "Invalid credentials"
            render "new"
        end 
    end 

    def create_using_facebook
        @user = User.find_or_create_by(uid: auth['uid']) do |u|
            u.email = auth['info']['email']
            u.password = auth['info']['password']
            u.first_name = auth['info']['first_name']
            u.last_name = auth['info']['last_name']
        end 
        #binding.pry
        @user.save
        session[:user_id] = @user.id
        redirect_to user_path(@user)
        flash[:success] = "Login with Facebook was successful"
    end 
        
    def destroy 
        session.delete :user_id
        redirect_to login_path
        flash[:notice] = "Logged out successfully"
    end 

    private

    def auth
        request.env['omniauth.auth']
    end 
end 