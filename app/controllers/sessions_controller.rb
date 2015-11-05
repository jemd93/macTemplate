class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(name: params[:session][:name])
    if @user && @user.authenticate(params[:session][:password])
      log_in @user
      redirect_to '/admin/home'
    else 
      #create and error message
      flash.now[:danger] = 'Invalid Username/Password combination'
      render 'admin/login'
    end
  end

  def destroy
  end
end
