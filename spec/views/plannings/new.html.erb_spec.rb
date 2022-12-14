require 'rails_helper'

RSpec.describe "plannings/new", type: :view do
  before(:each) do
    assign(:planning, Planning.new(
      name: "MyString"
    ))
  end

  it "renders new planning form" do
    render

    assert_select "form[action=?][method=?]", plannings_path, "post" do

      assert_select "input[name=?]", "planning[name]"
    end
  end
end
