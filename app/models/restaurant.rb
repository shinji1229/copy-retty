class Restaurant < ApplicationRecord
   has_many :users, through: :restaurant_users
   has_many :restaurant_users
   has_many :comments
end
