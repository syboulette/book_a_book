class User < ApplicationRecord
  has_many :books
  has_many :rentals
  has_one_attached :photo_id
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
