require 'faker'

Book.destroy_all
User.destroy_all

# FAKER USER 

puts 'creating 20 fake users'

  20.times do User.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email(domain: 'example'), 
      password: Faker::Internet.password(min_length: 6)
  )
  end

puts "Creating 20 fake books"
  3.times do Book.create(
      title: Faker::Book.title, 
      author: Faker::Book.author,
      genre: Faker::Book.genre,
      date_of_publication: Faker::Date.backward(days: 100_00),
      language: ["English", "Portuguese", "French", "Spanish", "German"].sample,
      daily_price: rand(1..2),
      # users: user,
      status: false
  )
  end
