# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: 'Sanad',
             username: 'Sandoog',
             email: 'sanad@example.com',
             password: 'password',
             password_confirmation: 'password')

10.times do |_i|
  User.create!(name: Faker::Name.name,
               username: Faker::Name.unique.first_name,
               email: Faker::Internet.unique.email,
               password: 'password',
               password_confirmation: 'password')
end
Follower.create(confirmed: true, user_id: 1, follower_id: 2)
Follower.create(confirmed: true, user_id: 2, follower_id: 1)
Follower.create(confirmed: true, user_id: 3, follower_id: 1)
Follower.create(confirmed: true, user_id: 4, follower_id: 1)
Follower.create(confirmed: true, user_id: 5, follower_id: 1)

2.times do |_i|
  opinion = Opinion.new
  opinion.body = Faker::Lorem.paragraph_by_chars(number: 200)
  opinion.user = User.first
  opinion.save
end

2.times do |_i|
  opinion = Opinion.new
  opinion.body = Faker::Lorem.paragraph_by_chars(number: 200)
  opinion.user = User.second
  opinion.save
end

2.times do |_i|
  opinion = Opinion.new
  opinion.body = Faker::Lorem.paragraph_by_chars(number: 200)
  opinion.user = User.third
  opinion.save
end

2.times do |_i|
  opinion = Opinion.new
  opinion.body = Faker::Lorem.paragraph_by_chars(number: 200)
  opinion.user = User.fourth
  opinion.save
end
