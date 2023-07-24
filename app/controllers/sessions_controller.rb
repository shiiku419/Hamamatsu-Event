class SessionsController < ApplicationController
  #skip_before_action :login_required
  
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash.now[:alert] = 'Invalid username or password.'
      render :new, status: :unprocessable_entity
    end
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !current_user.nil?
  end

  def destroy
    reset_session
    redirect_to root_path, notice: 'ログアウトしました。'
  end
end
