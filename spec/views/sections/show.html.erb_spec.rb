require 'rails_helper'

RSpec.describe "sections/show", type: :view do
  before(:each) do
    @section = assign(:section, Section.create!(
      :name => "Name",
      :role => nil,
      :pdf => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
  end
end
