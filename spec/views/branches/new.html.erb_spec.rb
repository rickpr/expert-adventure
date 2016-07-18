require 'rails_helper'

RSpec.describe "branches/new", type: :view do
  before(:each) do
    assign(:branch, Branch.new(
      :name => "MyString",
      :type => ""
    ))
  end

  it "renders new branch form" do
    render

    assert_select "form[action=?][method=?]", branches_path, "post" do

      assert_select "input#branch_name[name=?]", "branch[name]"

      assert_select "input#branch_type[name=?]", "branch[type]"
    end
  end
end
