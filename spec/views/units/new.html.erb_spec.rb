require 'rails_helper'

RSpec.describe "units/new", type: :view do
  before(:each) do
    assign(:unit, Unit.new(
      :school => nil,
      :name => "MyString",
      :type => ""
    ))
  end

  it "renders new unit form" do
    render

    assert_select "form[action=?][method=?]", units_path, "post" do

      assert_select "input#unit_school_id[name=?]", "unit[school_id]"

      assert_select "input#unit_name[name=?]", "unit[name]"

      assert_select "input#unit_type[name=?]", "unit[type]"
    end
  end
end
