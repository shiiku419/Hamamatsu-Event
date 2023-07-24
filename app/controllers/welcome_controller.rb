class WelcomeController < ApplicationController
    def index
      @event_lists = Post.order(:update_date).limit(5)
      @maps = Post.order(:id)
      @categories = Post.group(:category).count
    end
  end
  