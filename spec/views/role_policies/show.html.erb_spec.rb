require 'rails_helper'

RSpec.describe "role_policies/show", type: :view do
  before(:each) do
    @role_policy = assign(:role_policy, RolePolicy.create!(
      :administrator_role => nil,
      :managed_role => nil,
      :within => "Within"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Within/)
  end
end
