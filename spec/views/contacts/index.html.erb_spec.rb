require 'rails_helper'

RSpec.describe "contacts/index", type: :view do
  before(:each) do
    assign(:contacts, [
      Contact.create!(
        name: "Name",
        tel: "0611223344",
        email: "Email",
        type_name: "Client",
        status: "Rien"
      ),
      Contact.create!(
        name: "Name",
        tel: "0611223344",
        email: "Email",
        type_name: "Client",
        status: "Rien"
      )
    ])
  end

  it "renders a list of contacts" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'tr>td' : 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("0611223344".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Client".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Rien".to_s), count: 2
  end
end
