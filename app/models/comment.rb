class Comment < ApplicationRecord
  validates :body, presence: true
  belongs_to :user
  belongs_to :restaurant
  mount_uploader :image, CommentsImageUploader
end
