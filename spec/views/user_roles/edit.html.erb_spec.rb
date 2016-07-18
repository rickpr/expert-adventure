require 'rails_helper'

RSpec.describe "user_roles/edit", type: :view do
  before(:each) do
    @user_role = assign(:user_role, UserRole.create!(
      :user => nil,
      :role => nil,
      :unit => nil,
      :school => nil,
      :has_dossier => false
    ))
  end

  it "renders the edit user_role form" do
    render

    assert_select "form[action=?][method=?]", user_role_path(@user_role), "post" do

      assert_select "input#user_role_user_id[name=?]", "user_role[user_id]"

      assert_select "input#user_role_role_id[name=?]", "user_role[role_id]"

      assert_select "input#user_role_unit_id[name=?]", "user_role[unit_id]"

      assert_select "input#user_role_school_id[name=?]", "user_role[school_id]"

      assert_select "input#user_role_has_dossier[name=?]", "user_role[has_dossier]"
    end
  end
end
