require 'rails_helper'

RSpec.describe "contacts/show", type: :view do
  before(:each) do
    assign(:contact, Contact.create!(
      name: "Name",
      tel: "0611223344",
      email: "Email",
      type_name: "Client",
      status: "Rien"
    ))
  end

  # it "renders attributes in <p>" do
  #   render
  #   expect(rendered).to match(/Name/)
  #   expect(rendered).to match(/Tel/)
  #   expect(rendered).to match(/Email/)
  #   expect(rendered).to match(/Client/)
  #   expect(rendered).to match(/Rien/)
  # end
end
