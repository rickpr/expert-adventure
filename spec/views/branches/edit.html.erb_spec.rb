require 'rails_helper'

RSpec.describe "branches/edit", type: :view do
  before(:each) do
    @branch = assign(:branch, Branch.create!(
      :name => "MyString",
      :type => ""
    ))
  end

  it "renders the edit branch form" do
    render

    assert_select "form[action=?][method=?]", branch_path(@branch), "post" do

      assert_select "input#branch_name[name=?]", "branch[name]"

      assert_select "input#branch_type[name=?]", "branch[type]"
    end
  end
end
