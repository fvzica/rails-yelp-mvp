class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true, length: { minimum: 1 }, absence: false
  validates :rating, numericality: { only_integer: true }, inclusion: { in: 0..5 }, absence: false

end
