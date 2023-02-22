class RemoveDurationFromRentals < ActiveRecord::Migration[7.0]
  def change
    remove_column :rentals, :duration
  end
end
