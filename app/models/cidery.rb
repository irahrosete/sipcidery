class Cidery < ApplicationRecord
  has_many :drinks
  has_many :users
  has_one_attached :logo
end