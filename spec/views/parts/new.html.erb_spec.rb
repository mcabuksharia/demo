require 'rails_helper'

RSpec.describe "parts/new", type: :view do
  before(:each) do
    assign(:part, Part.new(
      :name => "MyString",
      :part_no => 1
    ))
  end

  it "renders new part form" do
    render

    assert_select "form[action=?][method=?]", parts_path, "post" do

      assert_select "input#part_name[name=?]", "part[name]"

      assert_select "input#part_part_no[name=?]", "part[part_no]"
    end
  end
end
