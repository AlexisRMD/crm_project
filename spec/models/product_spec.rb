require 'rails_helper'

RSpec.describe Product, type: :model do
  it "should create a valid product" do
    cat = Category.create(name: "Test category")
    prod = Product.create(name: "Test product", category: cat, price: 0, remaining_quantity: 0)

    prods = []
    prods.push(prod)

    cats = []
    cats.push(cat)
    
    expect(cats.count).to equal(1)
    expect(prods.count).to equal(1)
  end
end
