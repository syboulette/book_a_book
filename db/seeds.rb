require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
20.times do
  user = User.new(
    first_name: Faker::Name.first_name,      #=> "Kaci"
    last_name: Faker::Name.last_name,        #=> "Ernser"
    address: Faker::Address.full_address, #=> "5479 William Way, East Sonnyhaven, LA 63637"
    email: Faker::Internet.email(domain: 'example'), #=> "alice@example.name"
    password: Faker::Internet.password(min_length: 6)
  )
  user.save!
end

# FAKER BOOKS +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

20.times do
  book = Book.new(
    title: Faker::Book.title, #=> "The Odd Sister"
    author: Faker::Book.author, #=> "Alysha Olsen"
    genre: Faker::Book.genre, #=> "Mystery"
    date_of_publication: Faker::Date.backward(days: 100_000), #=> "Fri, 19 Sep 2014"
    language: ["English", "Portuguese", "French", "Spanish", "German"].sample,
    daily_price: rand(1..2),
    user_id: user_1.id,
    status: false
  )
  book.save!
end

# Book.destroy_all

# 10.times do 
#   book = Book.create(
#     title:Faker::Book.title
#     author:Faker::Book.author
#     genre: Faker::Book.genre
#     date_of_publication: rand(1..2023)
#     daily_price: rand(0.01..10.00)
#     language: ["English", "Portuguese", "French", "Spanish", "German"].sample,)
#     book.save!
# end
  
