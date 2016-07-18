require 'rails_helper'

RSpec.describe "recusals/edit", type: :view do
  before(:each) do
    @recusal = assign(:recusal, Recusal.create!(
      :reviewer => nil,
      :candidate => nil
    ))
  end

  it "renders the edit recusal form" do
    render

    assert_select "form[action=?][method=?]", recusal_path(@recusal), "post" do

      assert_select "input#recusal_reviewer_id[name=?]", "recusal[reviewer_id]"

      assert_select "input#recusal_candidate_id[name=?]", "recusal[candidate_id]"
    end
  end
end
