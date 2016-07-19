require 'rails_helper'

RSpec.describe "phases/edit", type: :view do
  before(:each) do
    @phase = assign(:phase, Phase.create!(
      :name => "MyString",
      :next_phase => nil
    ))
  end

  it "renders the edit phase form" do
    render

    assert_select "form[action=?][method=?]", phase_path(@phase), "post" do

      assert_select "input#phase_name[name=?]", "phase[name]"

      assert_select "input#phase_next_phase_id[name=?]", "phase[next_phase_id]"
    end
  end
end
