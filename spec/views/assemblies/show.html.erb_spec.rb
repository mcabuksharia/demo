require 'rails_helper'

RSpec.describe "assemblies/show", type: :view do
  before(:each) do
    @assembly = assign(:assembly, Assembly.create!(
      :name => "Name",
      :manufacturing_date => "Manufacturing Date"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Manufacturing Date/)
  end
end
