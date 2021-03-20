class Drink < ApplicationRecord
  belongs_to :cidery
  belongs_to :style
  belongs_to :sugar_content
  belongs_to :prod_method
  validates :name, presence: true
  has_one_attached :photo
  has_many :saved_drinks, dependent: :destroy
  has_many :users, through: :saved_drinks
  has_many :availables, dependent: :destroy
  has_many :retailers, through: :availables
  before_save :remove_whitespace

  # define search function from navbar
  def self.search(search)
    if search
      where(["LOWER(name) LIKE ?", "%#{search.downcase}%"])
    else
      all
    end
  end
end

# remove white space
def remove_whitespace
  self.name = self.name.strip
  self.description = self.description.strip
end
