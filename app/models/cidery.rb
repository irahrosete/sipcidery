class Cidery < ApplicationRecord
  has_many :drinks, dependent: :destroy
  has_many :users, dependent: :destroy
  has_one_attached :logo
end