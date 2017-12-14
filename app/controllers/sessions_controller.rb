class SessionsController < ApplicationController
  def new
  end

  def create
  	@user = User.find_by_email(params[:session][:email])
  	if @user && @user.authenticate(params[:session][:password])
  		session[:user_id] = @user.id
  		flash[:notice] = "Login was successful!"
  		redirect_to @user
  	else
  		flash[:notice] = "Account not found. Signup!"
  		redirect_to signup_path
  	end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
