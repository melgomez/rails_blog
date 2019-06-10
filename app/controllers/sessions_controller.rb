class SessionsController < ApplicationController

  def new
  end

  def create
    user_email = params[:session][:email].to_s

    user = User.find_by(email: user_email)

    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "You have successfully logged in"
      redirect_to user_path(user.id)
    else
      flash.now[:danger] = "There was something wrong with you login information"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
