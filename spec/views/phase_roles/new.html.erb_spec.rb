require 'rails_helper'

RSpec.describe "phase_roles/new", type: :view do
  before(:each) do
    assign(:phase_role, PhaseRole.new(
      :phase => nil,
      :role => nil
    ))
  end

  it "renders new phase_role form" do
    render

    assert_select "form[action=?][method=?]", phase_roles_path, "post" do

      assert_select "input#phase_role_phase_id[name=?]", "phase_role[phase_id]"

      assert_select "input#phase_role_role_id[name=?]", "phase_role[role_id]"
    end
  end
end
