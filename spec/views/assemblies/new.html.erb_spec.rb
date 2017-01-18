require 'rails_helper'

RSpec.describe "assemblies/new", type: :view do
  before(:each) do
    assign(:assembly, Assembly.new(
      :name => "MyString",
      :manufacturing_date => "MyString"
    ))
  end

  it "renders new assembly form" do
    render

    assert_select "form[action=?][method=?]", assemblies_path, "post" do

      assert_select "input#assembly_name[name=?]", "assembly[name]"

      assert_select "input#assembly_manufacturing_date[name=?]", "assembly[manufacturing_date]"
    end
  end
end
