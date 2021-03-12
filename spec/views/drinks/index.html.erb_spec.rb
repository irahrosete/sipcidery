require 'rails_helper'

RSpec.describe "drinks/index", type: :view do
  before(:each) do
    assign(:drinks, [
      Drink.create!(
        name: "Drink Name",
        description: "MyText",
        cidery: "MyCidery",
        price: 2,
        available: false,
        quantity: 3
      ),
      Drink.create!(
        name: "Drink Name",
        description: "MyText",
        price: 2,
        available: false,
        quantity: 3
      )
    ])
  end

  it "renders a list of drinks" do
    render
    assert_select "tr>td", text: "Drink Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
