require 'rails_helper'

RSpec.describe "transactions/edit", type: :view do
  let(:transaction) {
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

    Transaction.create!(
      contact_id: contact.id,
      product_id: product.id,
      status: "Négociation en cours",
      date_livraison: Time.current
    )
  }

  before(:each) do
    assign(:transaction, transaction)
  end

  it "renders the edit transaction form" do
    render

    assert_select "form[action=?][method=?]", transaction_path(transaction), "post" do

      # assert_select "input[name=?]", "transaction[contact_id]"

      # assert_select "input[name=?]", "transaction[product_id]"

      # assert_select "input[name=?]", "transaction[status]"
    end
  end
end
