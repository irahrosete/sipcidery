class Drink < ApplicationRecord
  belongs_to :brewer
  validates :name, presence: true
  has_one_attached :photo
end
