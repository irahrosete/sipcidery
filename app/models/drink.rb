class Drink < ApplicationRecord
  belongs_to :cidery
  # belongs_to :user
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
