require 'rails_helper'

RSpec.describe "divisions/new", type: :view do
  before(:each) do
    assign(:division, Division.new(
      :school => nil,
      :name => "MyString",
      :type => ""
    ))
  end

  it "renders new division form" do
    render

    assert_select "form[action=?][method=?]", divisions_path, "post" do

      assert_select "input#division_school_id[name=?]", "division[school_id]"

      assert_select "input#division_name[name=?]", "division[name]"

      assert_select "input#division_type[name=?]", "division[type]"
    end
  end
end
