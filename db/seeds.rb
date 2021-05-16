# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
email = "test@example.com"
password = "password"

ActiveRecord::Base.connection.execute("TRUNCATE TABLE users RESTART IDENTITY CASCADE")

user1 = User.create!(email: "satou@example.com", password: "password")
user2 = User.create!(email: "suzuki@example.com", password: "password")
user3 = User.create!(email: "tanaka@example.com", password: "password")

# Post.create!(content: "おはよう", user_id: user2.id)
# Post.create!(content: "こんにちは", user_id: user3.id)
# Post.create!(content: "こんばんは", user_id: user3.id)

# user2.posts.create!(content: "Good Moring")
# user3.posts.create!(content: "Good afternoon")
# user3.posts.create!(content: "Good night")

user2.posts.create!(content: "沖縄そば")
user1.posts.create!(content: "海ぶどう")
user3.posts.create!(content: "ゴーヤーちゃんぷる")
user3.posts.create!(content: "サーターアンダギー")
user1.posts.create!(content: "タコライス")

User.create!(email: email, password: password)

puts "初期データの投入に成功しました！"
