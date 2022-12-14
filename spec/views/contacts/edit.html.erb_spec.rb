require 'rails_helper'

RSpec.describe "contacts/edit", type: :view do
  let(:contact) {
    Contact.create!(
      name: "MyString",
      tel: "0611223344",
      email: "MyString",
      type_name: "Client",
      status: "Rien"
    )
  }

  before(:each) do
    assign(:contact, contact)
  end

  it "renders the edit contact form" do
    render

    assert_select "form[action=?][method=?]", contact_path(contact), "post" do

      assert_select "input[name=?]", "contact[name]"

      assert_select "input[name=?]", "contact[tel]"

      assert_select "input[name=?]", "contact[email]"

      # assert_select "input[name=?]", "contact[type_name]"

      # assert_select "input[name=?]", "contact[status]"
    end
  end
end
