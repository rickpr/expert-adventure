require 'rails_helper'

RSpec.describe "RolePolicies", type: :request do
  describe "GET /role_policies" do
    it "works! (now write some real specs)" do
      get role_policies_path
      expect(response).to have_http_status(200)
    end
  end
end
