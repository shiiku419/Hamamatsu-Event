class PostsController < ApplicationController
    def index
        @event_lists = Post.eager_load(:favorites)
        @event_lists = @event_lists.where(category: params[:category]) if params[:category].present?
        @event_lists = @event_lists.where(district: params[:location]) if params[:location].present?
        @event_lists = @event_lists.paginate(page: params[:page], per_page: 10)

        @categories = Post.group(:category).count
        @location = Post.group(:district).count
    end

    def search
        @results = Post.eager_load(:favorites).where("event_name LIKE ? AND category = ?", "%#{params[:query]}%", params[:category])
        @categories = Post.group(:category).count
        @location = Post.group(:district).count
        @results = @results.paginate(page: params[:page], per_page: 10) if @results.any?
        render 'posts/index'
    end       
end
