class Book < ApplicationRecord
  belongs_to :user, optional: true
  has_many :rentals
  # validates :title, presence: true
  # validates :date_of_publication, presence: true
  # validates :author, presence: true
  validates_presence_of :title, :date_of_publication, :author, :daily_price
end
