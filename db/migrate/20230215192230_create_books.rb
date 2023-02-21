class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.integer :date_of_publication
      t.integer :age_restriction
      t.integer :user_id
      t.integer :daily_price
      t.string :language

      t.timestamps
    end
  end
end

Book.destroy_all

10.times do 
  book.create(title:Faker::Book.unique.title
              author:Faker::Book.unique.author
              genre: Faker::Book.unique.genre
              date_of_publication: rand(1..2023)
              daily_price: rand(0.01..10.00)
              language: Faker::Language)

end
