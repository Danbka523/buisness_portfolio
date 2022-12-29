class LoginController < ApplicationController
    def new
  
    end
  
    def create
      user = User.find_by_email(user_params[:email])
      if user.present? && user.authenticate(user_params[:password])
        session[:user_id] = user.u_id
        redirect_to '/profile/profile'
      else
        flash[:error] = ['Invalid data']
        redirect_to login_path
      end
    end
  
    def destroy
      session[:user_id] = nil
      redirect_to root_path
    end
  
    private
  
    def user_params
      params.require(:user).permit(:email, :password)
    end
  end