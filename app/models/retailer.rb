class Retailer < ApplicationRecord
  has_many :availables
  has_many :drinks, through: :availables
end
