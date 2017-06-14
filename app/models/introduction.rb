class Introduction < ApplicationRecord

  belongs_to :restaurant
  mount_uploader :image, RestaurantsImageUploader
end
