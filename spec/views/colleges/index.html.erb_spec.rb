require 'rails_helper'

RSpec.describe "colleges/index", type: :view do
  before(:each) do
    assign(:colleges, [
      College.create!(
        :name => "Name",
        :type => "Type"
      ),
      College.create!(
        :name => "Name",
        :type => "Type"
      )
    ])
  end

  it "renders a list of colleges" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
