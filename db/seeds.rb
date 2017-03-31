# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#add Users in db users
2.times do |u|
  User.create(first_name: "User ##{u} first_name", last_name: "User ##{u} last_name", email: "user#{u}@example.com",
              password: "user#{u}@example.com", password_confirmation: "user#{u}@example.com", phone: "050645622#{u}")
end
2.times do |p|
  Post.create(title: "User ##{p} Post title", content: "User ##{p} Post content", user_id: p+1)
end