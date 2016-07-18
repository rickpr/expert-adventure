require 'rails_helper'

RSpec.describe "user_roles/show", type: :view do
  before(:each) do
    @user_role = assign(:user_role, UserRole.create!(
      :user => nil,
      :role => nil,
      :unit => nil,
      :school => nil,
      :has_dossier => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
  end
end
