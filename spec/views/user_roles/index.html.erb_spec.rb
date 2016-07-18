require 'rails_helper'

RSpec.describe "user_roles/index", type: :view do
  before(:each) do
    assign(:user_roles, [
      UserRole.create!(
        :user => nil,
        :role => nil,
        :unit => nil,
        :school => nil,
        :has_dossier => false
      ),
      UserRole.create!(
        :user => nil,
        :role => nil,
        :unit => nil,
        :school => nil,
        :has_dossier => false
      )
    ])
  end

  it "renders a list of user_roles" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
