require 'rails_helper'

RSpec.describe "assemblies/edit", type: :view do
  before(:each) do
    @assembly = assign(:assembly, Assembly.create!(
      :name => "MyString",
      :manufacturing_date => "MyString"
    ))
  end

  it "renders the edit assembly form" do
    render

    assert_select "form[action=?][method=?]", assembly_path(@assembly), "post" do

      assert_select "input#assembly_name[name=?]", "assembly[name]"

      assert_select "input#assembly_manufacturing_date[name=?]", "assembly[manufacturing_date]"
    end
  end
end
