require 'rails_helper'

RSpec.describe "phase_roles/edit", type: :view do
  before(:each) do
    @phase_role = assign(:phase_role, PhaseRole.create!(
      :phase => nil,
      :role => nil
    ))
  end

  it "renders the edit phase_role form" do
    render

    assert_select "form[action=?][method=?]", phase_role_path(@phase_role), "post" do

      assert_select "input#phase_role_phase_id[name=?]", "phase_role[phase_id]"

      assert_select "input#phase_role_role_id[name=?]", "phase_role[role_id]"
    end
  end
end
