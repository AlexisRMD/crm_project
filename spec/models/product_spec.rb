require 'rails_helper'

RSpec.describe Product, type: :model do
  category = Category.create(name: "Tester")
  it "is a valid product" do
    prod = Product.create(name: "Valid Product", category: category, price: 0, remaining_quantity: 0)
    expect(prod).to be_valid()
  end

  it "is not valid without a name" do
    prod = Product.create(name: nil, category: category, price: 0, remaining_quantity: 0)
    expect(prod).to_not be_valid()
  end

  it "is not valid without a category" do
    prod = Product.create(name: "Valid Product", category: nil, price: 0, remaining_quantity: 0)
    expect(prod).to_not be_valid()
  end

  it "is not valid with a negative price" do
    prod = Product.create(name: "Valid Product", category: category, price: -1, remaining_quantity: 0)
    expect(prod).to_not be_valid()
  end
end
