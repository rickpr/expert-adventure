require 'rails_helper'

RSpec.describe "role_policies/index", type: :view do
  before(:each) do
    assign(:role_policies, [
      RolePolicy.create!(
        :administrator_role => nil,
        :managed_role => nil,
        :within => "Within"
      ),
      RolePolicy.create!(
        :administrator_role => nil,
        :managed_role => nil,
        :within => "Within"
      )
    ])
  end

  it "renders a list of role_policies" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Within".to_s, :count => 2
  end
end
