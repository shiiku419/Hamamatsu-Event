class WelcomeController < ApplicationController
  include SessionsHelper
  def index
    if logged_in? && current_user.favorites.exists?
      favorited_categories = current_user.favorited_categories
      @event_lists = Post.where(category: favorited_categories).order(updated_at: :desc).limit(5)
    else
      @event_lists = Post.order(updated_at: :desc).limit(5)
    end
    @maps = Post.order(:id)
    @categories = Post.group(:category).count
  end
end
  