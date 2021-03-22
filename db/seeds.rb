# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Post.destroy_all
Comment.destroy_all


10.times do 
    Post.create(title: Faker::Quote.yoda, content: Faker::Quote.matz)
end

10.times do
    User.create(username: Faker::Internet.username, email: Faker::Internet.free_email)
end
10.times do
    Comment.create(content: Faker::Fantasy::Tolkien.race, 
            user: User.all.sample, post: Post.all.sample)
end