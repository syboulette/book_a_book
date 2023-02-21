require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Examples:

#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Book.destroy_all
User.destroy_all

# FAKER USER ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

puts 'creating 20 fake users'

20.times do
  @user = User.new(

    first_name: Faker::Name.first_name,      #=> "Kaci"
    last_name: Faker::Name.last_name,        #=> "Ernser"
    # address: Faker::Address.full_address, #=> "5479 William Way, East Sonnyhaven, LA 63637"
    email: Faker::Internet.email(domain: 'example'), #=> "alice@example.name"
    password: Faker::Internet.password(min_length: 6)
  )
  @user.save!

  # FAKER BOOKS +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

puts "Creating 20 fake books"
    3.times do
        book = @user.books.new(
        title: Faker::Book.title, #=> "The Odd Sister"
        author: Faker::Book.author, #=> "Alysha Olsen"
        genre: Faker::Book.genre, #=> "Mystery"
        date_of_publication: Faker::Date.backward(days: 100_00) #=> "Fri, 19 Sep 2014"
        language: ["English", "Portuguese", "French", "Spanish", "German"].sample,
        daily_price: rand(1..2),
        # users: user,
        status: false
    )
    book.save!
    end
end




