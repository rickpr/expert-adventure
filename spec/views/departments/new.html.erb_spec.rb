require 'rails_helper'

RSpec.describe "departments/new", type: :view do
  before(:each) do
    assign(:department, Department.new(
      :school => nil,
      :name => "MyString",
      :type => ""
    ))
  end

  it "renders new department form" do
    render

    assert_select "form[action=?][method=?]", departments_path, "post" do

      assert_select "input#department_school_id[name=?]", "department[school_id]"

      assert_select "input#department_name[name=?]", "department[name]"

      assert_select "input#department_type[name=?]", "department[type]"
    end
  end
end
