require 'rails_helper'

RSpec.describe "departments/edit", type: :view do
  before(:each) do
    @department = assign(:department, Department.create!(
      :school => nil,
      :name => "MyString",
      :type => ""
    ))
  end

  it "renders the edit department form" do
    render

    assert_select "form[action=?][method=?]", department_path(@department), "post" do

      assert_select "input#department_school_id[name=?]", "department[school_id]"

      assert_select "input#department_name[name=?]", "department[name]"

      assert_select "input#department_type[name=?]", "department[type]"
    end
  end
end
