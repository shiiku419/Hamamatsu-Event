class User < ApplicationRecord
    has_secure_password
    has_many :post, dependent: :destroy
    has_many :favorites, dependent: :destroy
end
