class SavedDrink < ApplicationRecord
  belongs_to :drink
  belongs_to :user
end
