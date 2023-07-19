class WelcomeController < ApplicationController
    def index
      @event_lists = Post.order(:update_date).limit(5)
      @categories = Post.group(:category).count
      @fav_categories = Post.joins(:favorites).group(:category).order('count(favorites.id) desc').limit(3).count
      liked_post_categories = current_user.liked_categories
      @recommended_events = Post.where(category: liked_post_categories)
    end
  
    def search
      @results = Post.where("title LIKE ? AND category = ? AND location LIKE ?", "%#{params[:query]}%", params[:category], "%#{params[:location]}%")
    end
  end
  