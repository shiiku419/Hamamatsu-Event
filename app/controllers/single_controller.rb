class SingleController < ApplicationController
    def show
      @post = Post.find(params[:id])
      render 'single/index'
    end
end
  