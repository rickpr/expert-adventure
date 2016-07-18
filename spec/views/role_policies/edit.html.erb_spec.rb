require 'rails_helper'

RSpec.describe "role_policies/edit", type: :view do
  before(:each) do
    @role_policy = assign(:role_policy, RolePolicy.create!(
      :administrator_role => nil,
      :managed_role => nil,
      :within => "MyString"
    ))
  end

  it "renders the edit role_policy form" do
    render

    assert_select "form[action=?][method=?]", role_policy_path(@role_policy), "post" do

      assert_select "input#role_policy_administrator_role_id[name=?]", "role_policy[administrator_role_id]"

      assert_select "input#role_policy_managed_role_id[name=?]", "role_policy[managed_role_id]"

      assert_select "input#role_policy_within[name=?]", "role_policy[within]"
    end
  end
end
