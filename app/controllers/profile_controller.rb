class ProfileController < ApplicationController
    def index
      @favorited_posts = current_user.favorites.map(&:post)
    end
    def new
      @user = User.new
    end
  
    def create
      @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to root_path, notice: 'Thank you for signing up!'
      else
        render :new
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation)
    end
  end
  