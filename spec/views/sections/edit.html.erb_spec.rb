require 'rails_helper'

RSpec.describe "sections/edit", type: :view do
  before(:each) do
    @section = assign(:section, Section.create!(
      :name => "MyString",
      :role => nil,
      :pdf => false
    ))
  end

  it "renders the edit section form" do
    render

    assert_select "form[action=?][method=?]", section_path(@section), "post" do

      assert_select "input#section_name[name=?]", "section[name]"

      assert_select "input#section_role_id[name=?]", "section[role_id]"

      assert_select "input#section_pdf[name=?]", "section[pdf]"
    end
  end
end
