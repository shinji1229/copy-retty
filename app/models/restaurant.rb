class Restaurant < ApplicationRecord
  validates :phone, presence: true, format: {with: /\A[0-9-]{,14}\z/}
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :users, through: :restaurant_users
  has_many :restaurant_users
  has_many :comments
  has_one  :introduction
end
