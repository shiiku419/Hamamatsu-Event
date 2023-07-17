class PostsController < ApplicationController
    def index
        @event_lists = Post.all
        @event_lists = @event_lists.where(category: params[:category]) if params[:category].present?
        @event_lists = @event_lists.where(district: params[:location]) if params[:location].present?
        @event_lists = @event_lists.paginate(page: params[:page], per_page: 10)

        @categories = Post.group(:category).count
        @location = Post.group(:district).count
    end
end
