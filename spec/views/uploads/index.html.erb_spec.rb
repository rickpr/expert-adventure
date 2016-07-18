require 'rails_helper'

RSpec.describe "uploads/index", type: :view do
  before(:each) do
    assign(:uploads, [
      Upload.create!(
        :name => "Name",
        :rank => 2,
        :user => nil,
        :section => nil
      ),
      Upload.create!(
        :name => "Name",
        :rank => 2,
        :user => nil,
        :section => nil
      )
    ])
  end

  it "renders a list of uploads" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
