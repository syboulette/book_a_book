class Book < ApplicationRecord
  belongs_to :users
  validates :title, presence: true
  validates :date_of_publication, presence: true
  validates :author, presence: true
  has_many :rentals
end
