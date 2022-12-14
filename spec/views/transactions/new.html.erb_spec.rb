require 'rails_helper'

RSpec.describe "transactions/new", type: :view do
  before(:each) do
    contact = Contact.create(
      name: "Contact test",
      tel: "0677889944",
      email: "test@test.fr",
      type_name: "Prospect",
      status: "A contacté"
    )

    category = Category.create(name: "Category test")

    product = Product.create(
      name: "Product test",
      category_id: category.id,
      price: 11,
      remaining_quantity: 200
    )

    assign(:transaction, Transaction.new(
      contact_id: contact.id,
      product_id: product.id,
      status: "Négociation en cours",
      date_livraison: Time.current
    ))
  end

  it "renders new transaction form" do
    render

    assert_select "form[action=?][method=?]", transactions_path, "post" do

      # assert_select "input[name=?]", "transaction[contact_id]"

      # assert_select "input[name=?]", "transaction[product_id]"

      # assert_select "input[name=?]", "transaction[status]"
    end
  end
end
