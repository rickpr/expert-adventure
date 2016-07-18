require 'rails_helper'

RSpec.describe "divisions/show", type: :view do
  before(:each) do
    @division = assign(:division, Division.create!(
      :school => nil,
      :name => "Name",
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Type/)
  end
end
