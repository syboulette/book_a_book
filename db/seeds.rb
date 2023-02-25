puts 'Cleaning users database...'
User.destroy_all

puts 'creating users...'

20.times do
  user = User.create(
    first_name: Faker::Name.first_name,      #=> "Kaci"
    last_name: Faker::Name.last_name,        #=> "Ernser"
    email: Faker::Internet.email(domain: 'example'), #=> "alice@example.name"
    password: Faker::Internet.password(min_length: 6)
  )
end
puts 'Finished seeding users!'

# FAKER BOOKS +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
puts 'Cleaning books database...'

Book.destroy_all
puts 'creating books...'

20.times do Book.create!(
    title: Faker::Book.title, #=> "The Odd Sister",
    author: Faker::Book.author, #=> "Alysha Olsen"
    genre: Faker::Book.genre, #=> "Mystery"
    date_of_publication: Faker::Date.backward(days: 100_00),
    language: ["English", "Portuguese", "French", "Spanish", "German"].sample.to_s,
    daily_price: rand(0.01..10.00),
    user_id: User.all.sample.id,
    description: Faker::Quotes::Shakespeare.hamlet_quote
  )
end
puts 'Finished seeding books!'
