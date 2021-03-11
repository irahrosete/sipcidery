class Cidery < ApplicationRecord
  has_many :drinks
  has_one_attached :logo
end
