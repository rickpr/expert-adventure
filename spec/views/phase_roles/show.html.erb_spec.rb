require 'rails_helper'

RSpec.describe "phase_roles/show", type: :view do
  before(:each) do
    @phase_role = assign(:phase_role, PhaseRole.create!(
      :phase => nil,
      :role => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
