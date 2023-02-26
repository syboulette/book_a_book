class AddCoordinatesToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :latitude, :float
    add_column :books, :longitude, :float
  end
end
