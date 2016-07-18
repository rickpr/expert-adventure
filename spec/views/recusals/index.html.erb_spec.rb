require 'rails_helper'

RSpec.describe "recusals/index", type: :view do
  before(:each) do
    assign(:recusals, [
      Recusal.create!(
        :reviewer => nil,
        :candidate => nil
      ),
      Recusal.create!(
        :reviewer => nil,
        :candidate => nil
      )
    ])
  end

  it "renders a list of recusals" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
