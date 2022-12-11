require 'rails_helper'

RSpec.describe "transactions/new", type: :view do
  before(:each) do
    assign(:transaction, Transaction.new(
      contact: nil,
      product: nil,
      status: "MyString"
    ))
  end

  it "renders new transaction form" do
    render

    assert_select "form[action=?][method=?]", transactions_path, "post" do

      assert_select "input[name=?]", "transaction[contact_id]"

      assert_select "input[name=?]", "transaction[product_id]"

      assert_select "input[name=?]", "transaction[status]"
    end
  end
end
