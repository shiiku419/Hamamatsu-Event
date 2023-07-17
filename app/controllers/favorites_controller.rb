class FavoritesController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    favorite = current_user.favorites.new(post: post) # post_idを直接指定する代わりに関連オブジェクトを指定します
    favorite.save
    redirect_to request.referer
  end
  
  def destroy
    favorite = current_user.favorites.find_by(post_id: params[:post_id]) # postを直接参照する代わりにpost_idを使用します
    favorite.destroy if favorite # favoriteが存在する場合のみ削除を行います
    redirect_to request.referer
  end
end
