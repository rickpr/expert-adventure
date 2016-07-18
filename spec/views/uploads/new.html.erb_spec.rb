require 'rails_helper'

RSpec.describe "uploads/new", type: :view do
  before(:each) do
    assign(:upload, Upload.new(
      :name => "MyString",
      :rank => 1,
      :user => nil,
      :section => nil
    ))
  end

  it "renders new upload form" do
    render

    assert_select "form[action=?][method=?]", uploads_path, "post" do

      assert_select "input#upload_name[name=?]", "upload[name]"

      assert_select "input#upload_rank[name=?]", "upload[rank]"

      assert_select "input#upload_user_id[name=?]", "upload[user_id]"

      assert_select "input#upload_section_id[name=?]", "upload[section_id]"
    end
  end
end
