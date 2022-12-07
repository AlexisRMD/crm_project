require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  let(:product) {
    Product.create!(
      name: "MyString",
      category: nil,
      price: 1.5,
      remaining_quantity: 1
    )
  }

  before(:each) do
    assign(:product, product)
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(product), "post" do

      assert_select "input[name=?]", "product[name]"

      assert_select "input[name=?]", "product[category_id]"

      assert_select "input[name=?]", "product[price]"

      assert_select "input[name=?]", "product[remaining_quantity]"
    end
  end
end
