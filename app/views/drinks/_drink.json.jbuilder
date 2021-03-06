json.extract! drink, :id, :drink_name, :description, :price, :available, :quantity, :created_at, :updated_at
json.url drink_url(drink, format: :json)
