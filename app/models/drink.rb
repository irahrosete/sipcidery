class Drink < ApplicationRecord
  belongs_to :cidery
  validates :name, presence: true
  has_one_attached :photo
end
