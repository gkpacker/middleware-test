# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do
  post = Post.new
  post.title = Faker::Lorem.word
  post.content = Faker::Lorem.sentence
  post.save
end

4.times do
  Post.all.each do |post|
    comment = Comment.new
    comment.title = Faker::Lorem.word
    comment.content = Faker::Lorem.sentence
    comment.post = post
    comment.save
  end
end
