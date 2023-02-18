class Rental < ApplicationRecord
  belongs_to :books
  belongs_to :users

  validates :user_id, :book_id, uniqueness: true
end
