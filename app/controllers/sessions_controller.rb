class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user
      log_in(user)
      redirect_to root_path
    else
      flash.now[:danger] = 'コードが間違っています。'
      render 'new', status: :unprocessable_entity
    end
  end
  
  def destroy
    log_out
    redirect_to root_path, status: :see_other
  end
end