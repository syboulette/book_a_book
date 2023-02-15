class CreateRentals < ActiveRecord::Migration[7.0]
  def change
    create_table :rentals do |t|
      t.integer :user_id
      t.integer :book_id
      t.integer :duration

      t.timestamps
    end
  end
end
