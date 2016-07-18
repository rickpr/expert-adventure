require 'rails_helper'

RSpec.describe "recusals/show", type: :view do
  before(:each) do
    @recusal = assign(:recusal, Recusal.create!(
      :reviewer => nil,
      :candidate => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
