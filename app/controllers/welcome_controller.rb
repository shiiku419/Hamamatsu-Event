class WelcomeController < ApplicationController
    def index
      @event_lists = Post.order(updated_at: :desc).limit(5)
      @maps = Post.order(:id)
      @categories = Post.group(:category).count
    end
  end
  