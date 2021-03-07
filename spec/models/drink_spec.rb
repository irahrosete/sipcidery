require 'rails_helper'

RSpec.describe Drink, type: :model do
  context "validation test" do
    before(:all) do
      drink = Drink.new(
        name: "MyCider",
        description: "This is the description",
        price: 1.50,
        quantity: 1
      )
    end

    it "is valid when given required attributes" do
      expect(drink).to be_valid
    end
  end
end
