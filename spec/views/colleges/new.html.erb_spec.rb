require 'rails_helper'

RSpec.describe "colleges/new", type: :view do
  before(:each) do
    assign(:college, College.new(
      :name => "MyString",
      :type => ""
    ))
  end

  it "renders new college form" do
    render

    assert_select "form[action=?][method=?]", colleges_path, "post" do

      assert_select "input#college_name[name=?]", "college[name]"

      assert_select "input#college_type[name=?]", "college[type]"
    end
  end
end
