require 'rails_helper'

RSpec.describe "colleges/edit", type: :view do
  before(:each) do
    @college = assign(:college, College.create!(
      :name => "MyString",
      :type => ""
    ))
  end

  it "renders the edit college form" do
    render

    assert_select "form[action=?][method=?]", college_path(@college), "post" do

      assert_select "input#college_name[name=?]", "college[name]"

      assert_select "input#college_type[name=?]", "college[type]"
    end
  end
end
