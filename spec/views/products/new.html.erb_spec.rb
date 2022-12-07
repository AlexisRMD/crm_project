require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      name: "MyString",
      category: nil,
      price: 1.5,
      remaining_quantity: 1
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input[name=?]", "product[name]"

      assert_select "input[name=?]", "product[category_id]"

      assert_select "input[name=?]", "product[price]"

      assert_select "input[name=?]", "product[remaining_quantity]"
    end
  end
end
