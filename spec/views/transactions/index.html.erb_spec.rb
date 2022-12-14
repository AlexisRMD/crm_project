require 'rails_helper'

RSpec.describe "transactions/index", type: :view do
  # before(:each) do
  #   assign(:transactions, [
  #     Transaction.create!(
  #       contact: nil,
  #       product: nil,
  #       status: "Négociation en cours"
  #     ),
  #     Transaction.create!(
  #       contact: nil,
  #       product: nil,
  #       status: "Négociation en cours"
  #     )
  #   ])
  # end

  # it "renders a list of transactions" do
  #   render
  #   cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  #   assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  #   assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  #   assert_select cell_selector, text: Regexp.new("Négociation en cours".to_s), count: 2
  # end
end
