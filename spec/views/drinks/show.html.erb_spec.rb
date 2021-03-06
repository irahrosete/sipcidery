require 'rails_helper'

RSpec.describe "drinks/show", type: :view do
  before(:each) do
    @drink = assign(:drink, Drink.create!(
      drink_name: "Drink Name",
      description: "MyText",
      price: 2,
      available: false,
      quantity: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Drink Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/3/)
  end
end
