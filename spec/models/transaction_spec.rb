require 'rails_helper' 

RSpec.describe Transaction, type: :model do

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

  it "should create a valid transaction" do
    transaction = Transaction.create(
      contact_id: contact.id,
      product_id: product.id,
      status: "Négociation en cours",
      date_livraison: Time.current
    )
    expect(transaction).to be_valid
  end

  
  it "should create an invalid transaction" do
    # date_livraison invalid
    transaction1 = Transaction.create(
      contact_id: contact.id,
      product_id: product.id,
      status: "Négociation en cours"
    )
    expect(transaction1).to_not be_valid

    # date_livraison invalid value
    transaction1 = Transaction.create(
      contact_id: contact.id,
      product_id: product.id,
      status: "Négociation en cours",
      date_livraison: Date.today-2.day
    )
    expect(transaction1).to_not be_valid

    # contact_id invalid
    transaction2 = Transaction.create(
      contact_id: nil,
      product_id: product.id,
      status: "Commande en cours",
      date_livraison: Time.current
    )
    expect(transaction2).to_not be_valid

    # product_id invalid
    transaction3 = Transaction.create(
      contact_id: contact.id,
      product_id: nil,
      status: "Terminé",
      date_livraison: Time.current
    )
    expect(transaction3).to_not be_valid
  end
end
