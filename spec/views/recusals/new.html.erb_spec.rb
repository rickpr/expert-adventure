require 'rails_helper'

RSpec.describe "recusals/new", type: :view do
  before(:each) do
    assign(:recusal, Recusal.new(
      :reviewer => nil,
      :candidate => nil
    ))
  end

  it "renders new recusal form" do
    render

    assert_select "form[action=?][method=?]", recusals_path, "post" do

      assert_select "input#recusal_reviewer_id[name=?]", "recusal[reviewer_id]"

      assert_select "input#recusal_candidate_id[name=?]", "recusal[candidate_id]"
    end
  end
end
