require 'rails_helper'

RSpec.describe "phases/show", type: :view do
  before(:each) do
    @phase = assign(:phase, Phase.create!(
      :name => "Name",
      :next_phase => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
