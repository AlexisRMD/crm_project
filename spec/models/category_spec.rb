require 'rails_helper'

RSpec.describe Category, type: :model do
  it "is a valid category" do
    category = Category.create(name: "Tester")
    expect(category).to be_valid()
  end

  it "is not a valid category without name" do
    category = Category.create(name: nil)
    expect(category).to_not be_valid()
  end
end
