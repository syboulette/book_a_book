class AddPhotoIdToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :photo_id, :file
  end
end
