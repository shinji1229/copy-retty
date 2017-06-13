class Introduction < ApplicationRecord
  validates :body, presence: true
  belongs_to :restaurant
end
