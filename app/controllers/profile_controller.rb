class ProfileController < ApplicationController
    def index
      @favorited_posts = current_user.favorites.map(&:post)
    end
  end
  