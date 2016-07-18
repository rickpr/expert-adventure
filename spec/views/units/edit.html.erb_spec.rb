require 'rails_helper'

RSpec.describe "units/edit", type: :view do
  before(:each) do
    @unit = assign(:unit, Unit.create!(
      :school => nil,
      :name => "MyString",
      :type => ""
    ))
  end

  it "renders the edit unit form" do
    render

    assert_select "form[action=?][method=?]", unit_path(@unit), "post" do

      assert_select "input#unit_school_id[name=?]", "unit[school_id]"

      assert_select "input#unit_name[name=?]", "unit[name]"

      assert_select "input#unit_type[name=?]", "unit[type]"
    end
  end
end
