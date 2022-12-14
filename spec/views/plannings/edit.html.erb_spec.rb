require 'rails_helper'

RSpec.describe "plannings/edit", type: :view do
  let(:planning) {
    Planning.create!(
      name: "MyString"
    )
  }

  before(:each) do
    assign(:planning, planning)
  end

  it "renders the edit planning form" do
    render

    assert_select "form[action=?][method=?]", planning_path(planning), "post" do

      assert_select "input[name=?]", "planning[name]"
    end
  end
end
