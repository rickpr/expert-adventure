require 'rails_helper'

RSpec.describe "divisions/index", type: :view do
  before(:each) do
    assign(:divisions, [
      Division.create!(
        :school => nil,
        :name => "Name",
        :type => "Type"
      ),
      Division.create!(
        :school => nil,
        :name => "Name",
        :type => "Type"
      )
    ])
  end

  it "renders a list of divisions" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
