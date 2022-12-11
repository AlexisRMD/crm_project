require 'rails_helper'

RSpec.describe "transactions/edit", type: :view do
  let(:transaction) {
    Transaction.create!(
      contact: nil,
      product: nil,
      status: "MyString"
    )
  }

  before(:each) do
    assign(:transaction, transaction)
  end

  it "renders the edit transaction form" do
    render

    assert_select "form[action=?][method=?]", transaction_path(transaction), "post" do

      assert_select "input[name=?]", "transaction[contact_id]"

      assert_select "input[name=?]", "transaction[product_id]"

      assert_select "input[name=?]", "transaction[status]"
    end
  end
end
