class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :restaurants, through: :restautant_users
  has_many :restaurant_users
  has_many :comments
  has_many :events
  mount_uploader :image, UserImageUploader
end
