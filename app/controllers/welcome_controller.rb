class WelcomeController < ApplicationController
    def index
      @event_lists = Post.order(:update_date).limit(5)
      @categories = Post.group(:category).count
    end
  
    def search
      @results = Post.where("title LIKE ? AND category = ? AND location LIKE ?", "%#{params[:query]}%", params[:category], "%#{params[:location]}%")
    end
  end
  