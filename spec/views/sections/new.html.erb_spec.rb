require 'rails_helper'

RSpec.describe "sections/new", type: :view do
  before(:each) do
    assign(:section, Section.new(
      :name => "MyString",
      :role => nil,
      :pdf => false
    ))
  end

  it "renders new section form" do
    render

    assert_select "form[action=?][method=?]", sections_path, "post" do

      assert_select "input#section_name[name=?]", "section[name]"

      assert_select "input#section_role_id[name=?]", "section[role_id]"

      assert_select "input#section_pdf[name=?]", "section[pdf]"
    end
  end
end
