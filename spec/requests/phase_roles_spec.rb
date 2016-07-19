require 'rails_helper'

RSpec.describe "PhaseRoles", type: :request do
  describe "GET /phase_roles" do
    it "works! (now write some real specs)" do
      get phase_roles_path
      expect(response).to have_http_status(200)
    end
  end
end
