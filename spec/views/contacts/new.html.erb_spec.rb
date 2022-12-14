require 'rails_helper'

RSpec.describe "contacts/new", type: :view do
  before(:each) do
    assign(:contact, Contact.new(
      name: "MyString",
      tel: "0611223344",
      email: "MyString",
      type_name: "Client",
      status: "Rien"
    ))
  end

  it "renders new contact form" do
    render

    assert_select "form[action=?][method=?]", contacts_path, "post" do

      assert_select "input[name=?]", "contact[name]"

      assert_select "input[name=?]", "contact[tel]"

      assert_select "input[name=?]", "contact[email]"

      # assert_select "input[name=?]", "contact[type_name]"

      # assert_select "input[name=?]", "contact[status]"
    end
  end
end
