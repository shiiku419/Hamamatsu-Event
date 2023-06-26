# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# db/seeds.rb

# 例: テストユーザーを作成
User.create!(
    name: 'test',
    email: 'test@example.com',
    password_digest: 'test0'
  )