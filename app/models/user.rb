class User < ApplicationRecord
    has_secure_password
    has_many :post, dependent: :destroy
    has_many :favorites, dependent: :destroy
    has_one_attached :photo

    def liked_categories
        favorites.joins(:post).pluck('posts.category').uniq
    end
end
