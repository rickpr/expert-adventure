require 'rails_helper'

RSpec.describe "phases/new", type: :view do
  before(:each) do
    assign(:phase, Phase.new(
      :name => "MyString",
      :next_phase => nil
    ))
  end

  it "renders new phase form" do
    render

    assert_select "form[action=?][method=?]", phases_path, "post" do

      assert_select "input#phase_name[name=?]", "phase[name]"

      assert_select "input#phase_next_phase_id[name=?]", "phase[next_phase_id]"
    end
  end
end
