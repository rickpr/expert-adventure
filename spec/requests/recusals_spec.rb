require 'rails_helper'

RSpec.describe "Recusals", type: :request do
  describe "GET /recusals" do
    it "works! (now write some real specs)" do
      get recusals_path
      expect(response).to have_http_status(200)
    end
  end
end
