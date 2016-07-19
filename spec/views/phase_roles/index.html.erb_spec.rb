require 'rails_helper'

RSpec.describe "phase_roles/index", type: :view do
  before(:each) do
    assign(:phase_roles, [
      PhaseRole.create!(
        :phase => nil,
        :role => nil
      ),
      PhaseRole.create!(
        :phase => nil,
        :role => nil
      )
    ])
  end

  it "renders a list of phase_roles" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
