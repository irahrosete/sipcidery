class DrinkRetailer < ApplicationRecord
  belongs_to :drink
  belongs_to :retailer
end
