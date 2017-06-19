class Event < ApplicationRecord
  validates :title, presence: true, length: { maximum: 50 }
  validates :start, presence: true
  validates :end, presence: true
  belongs_to :user
end
