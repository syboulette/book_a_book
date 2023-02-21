class RemoveUserAndBookFromRentals < ActiveRecord::Migration[7.0]
  def change
    remove_column :rentals, :user_id
    remove_column :rentals, :book_id
  end
end
