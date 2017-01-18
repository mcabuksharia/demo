require 'rails_helper'

RSpec.describe "parts/index", type: :view do
  before(:each) do
    assign(:parts, [
      Part.create!(
        :name => "Name",
        :part_no => 1
      ),
      Part.create!(
        :name => "Name",
        :part_no => 1
      )
    ])
  end

  it "renders a list of parts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
