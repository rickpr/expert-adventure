require 'rails_helper'

RSpec.describe "roles/new", type: :view do
  before(:each) do
    assign(:role, Role.new(
      :name => "MyString",
      :rank => 1,
      :admin => false,
      :candidate => false
    ))
  end

  it "renders new role form" do
    render

    assert_select "form[action=?][method=?]", roles_path, "post" do

      assert_select "input#role_name[name=?]", "role[name]"

      assert_select "input#role_rank[name=?]", "role[rank]"

      assert_select "input#role_admin[name=?]", "role[admin]"

      assert_select "input#role_candidate[name=?]", "role[candidate]"
    end
  end
end
