class Drink < ApplicationRecord
  belongs_to :cidery
  belongs_to :style
  belongs_to :sugar_content
  belongs_to :prod_method
  validates :name, presence: true
  has_one_attached :photo


  def self.search(search)
    if search
      where(["LOWER(name) LIKE ?", "%#{search.downcase}%"])
    else
      all
    end
  end

end
