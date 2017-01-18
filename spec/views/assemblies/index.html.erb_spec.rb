require 'rails_helper'

RSpec.describe "assemblies/index", type: :view do
  before(:each) do
    assign(:assemblies, [
      Assembly.create!(
        :name => "Name",
        :manufacturing_date => "Manufacturing Date"
      ),
      Assembly.create!(
        :name => "Name",
        :manufacturing_date => "Manufacturing Date"
      )
    ])
  end

  it "renders a list of assemblies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Manufacturing Date".to_s, :count => 2
  end
end
