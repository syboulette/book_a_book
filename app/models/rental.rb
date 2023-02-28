class Rental < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates :user_id, :book_id, uniqueness: true
end