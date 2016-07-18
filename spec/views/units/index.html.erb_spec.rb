require 'rails_helper'

RSpec.describe "units/index", type: :view do
  before(:each) do
    assign(:units, [
      Unit.create!(
        :school => nil,
        :name => "Name",
        :type => "Type"
      ),
      Unit.create!(
        :school => nil,
        :name => "Name",
        :type => "Type"
      )
    ])
  end

  it "renders a list of units" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
