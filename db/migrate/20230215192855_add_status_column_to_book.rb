class AddStatusColumnToBook < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :status, :boolean
  end
end
