require 'rails_helper'

RSpec.describe Contact, type: :model do

  it "should create a valid contact" do
    contact = Contact.create(
      name: "Contact test",
      tel: "0677889944",
      email: "test@test.fr",
      type_name: "Prospect",
      status: "A contacté"
    )
    expect(contact).to be_valid
  end

  it "should create a invalid contact" do
    # name invalid
    contact = Contact.create(
      name: nil,
      tel: "0677889944",
      email: "test@test.fr",
      type_name: "Prospect",
      status: "A contacté"
    )
    expect(contact).to_not be_valid

    # tel invalid
    contact2 = Contact.create(
      name: "Contact test",
      tel: nil,
      email: "test@test.fr",
      type_name: "Prospect",
      status: "A contacté"
    )
    expect(contact2).to_not be_valid

    # tel length invalid
    contact3 = Contact.create(
      name: "Contact test",
      tel: "0677",
      email: "test@test.fr",
      type_name: "Prospect",
      status: "A contacté"
    )
    expect(contact3).to_not be_valid

    # tel numericality invalid
    contact4 = Contact.create(
      name: "Contact test",
      tel: "aaaaaaaaaa",
      email: "test@test.fr",
      type_name: "Prospect",
      status: "A contacté"
    )
    expect(contact4).to_not be_valid

    # email invalid
    contact5 = Contact.create(
      name: "Contact test",
      tel: "0677889944",
      email: nil,
      type_name: "Prospect",
      status: "A contacté"
    )
    expect(contact5).to_not be_valid

  end
end
