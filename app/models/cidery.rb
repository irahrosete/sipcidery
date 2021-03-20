class Cidery < ApplicationRecord
  has_many :drinks, dependent: :destroy
  has_many :users, dependent: :destroy
  has_one_attached :logo
  before_save :remove_whitespace
  validates :name, presence: true
end

# remove white space
def remove_whitespace
  self.name = self.name.strip
  self.description = self.description.strip
end