class SessionsController < ApplicationController

  def new
    session[:previous_url] = request.referer
  end

  def create
    user = User.find_by(name: params[:name])
    if user
      log_in(user)
      redirect_to session[:previous_url]
    else
      flash.now[:danger] = 'コードが間違っています。'
      render 'new', status: :unprocessable_entity
    end
  end
  
  def destroy
    log_out
    redirect_back(fallback_location: root_path)
  end
end