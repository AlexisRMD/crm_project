require 'rails_helper'

RSpec.describe "plannings/show", type: :view do
  before(:each) do
    assign(:planning, Planning.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
