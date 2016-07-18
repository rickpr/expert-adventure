require 'rails_helper'

RSpec.describe "divisions/edit", type: :view do
  before(:each) do
    @division = assign(:division, Division.create!(
      :school => nil,
      :name => "MyString",
      :type => ""
    ))
  end

  it "renders the edit division form" do
    render

    assert_select "form[action=?][method=?]", division_path(@division), "post" do

      assert_select "input#division_school_id[name=?]", "division[school_id]"

      assert_select "input#division_name[name=?]", "division[name]"

      assert_select "input#division_type[name=?]", "division[type]"
    end
  end
end
