class Drink < ApplicationRecord
  belongs_to :brewer
  validates :name, presence: true
end
