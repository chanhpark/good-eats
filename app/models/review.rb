class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates :review,
  presence: true
  validates :restaurant_id,
  presence: true
  validates :rating,
  presence: true
end
