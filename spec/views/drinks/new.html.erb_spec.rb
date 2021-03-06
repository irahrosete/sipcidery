require 'rails_helper'

RSpec.describe "drinks/new", type: :view do
  before(:each) do
    assign(:drink, Drink.new(
      drink_name: "MyString",
      description: "MyText",
      price: 1,
      available: false,
      quantity: 1
    ))
  end

  it "renders new drink form" do
    render

    assert_select "form[action=?][method=?]", drinks_path, "post" do

      assert_select "input[name=?]", "drink[drink_name]"

      assert_select "textarea[name=?]", "drink[description]"

      assert_select "input[name=?]", "drink[price]"

      assert_select "input[name=?]", "drink[available]"

      assert_select "input[name=?]", "drink[quantity]"
    end
  end
end
