require 'rails_helper'

RSpec.describe "roles/edit", type: :view do
  before(:each) do
    @role = assign(:role, Role.create!(
      :name => "MyString",
      :rank => 1,
      :admin => false,
      :candidate => false
    ))
  end

  it "renders the edit role form" do
    render

    assert_select "form[action=?][method=?]", role_path(@role), "post" do

      assert_select "input#role_name[name=?]", "role[name]"

      assert_select "input#role_rank[name=?]", "role[rank]"

      assert_select "input#role_admin[name=?]", "role[admin]"

      assert_select "input#role_candidate[name=?]", "role[candidate]"
    end
  end
end
