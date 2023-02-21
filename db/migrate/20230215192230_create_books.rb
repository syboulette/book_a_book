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

