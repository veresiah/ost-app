class SessionsController < ApplicationController
    def new 
    end  

    def create
        @user = User.find_by(id: params[:id])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
            flash[:success] = "Login was successful"
        else 
            flash[:error] = "Invalid credentials"
            render "new"
        end 
    end 

    def omniauth
        user = User.from_omniauth(request.env['omniauth.auth'])
        user.valid? 
        session[:user_id] = user.id
        redirect_to user_path(user)
        flash[:success] = "Login was successful" 
    end 
        
    def destroy 
        session.delete :user_id
        redirect_to login_path
        flash[:notice] = "Logged out successfully"
    end
end 