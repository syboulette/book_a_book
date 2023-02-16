class RemoveAgeRestrictionFromBooks < ActiveRecord::Migration[7.0]
  def change
    remove_column :books, :age_restriction, :integer
  end
end
