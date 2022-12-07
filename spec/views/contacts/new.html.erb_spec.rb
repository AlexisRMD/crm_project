require 'rails_helper'

RSpec.describe "contacts/new", type: :view do
  before(:each) do
    assign(:contact, Contact.new(
      name: "MyString",
      tel: "MyString",
      email: "MyString",
      type: 1,
      etat: 1
    ))
  end

  it "renders new contact form" do
    render

    assert_select "form[action=?][method=?]", contacts_path, "post" do

      assert_select "input[name=?]", "contact[name]"

      assert_select "input[name=?]", "contact[tel]"

      assert_select "input[name=?]", "contact[email]"

      assert_select "input[name=?]", "contact[type]"

      assert_select "input[name=?]", "contact[etat]"
    end
  end
end
