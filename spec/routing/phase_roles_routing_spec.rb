require "rails_helper"

RSpec.describe PhaseRolesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/phase_roles").to route_to("phase_roles#index")
    end

    it "routes to #new" do
      expect(:get => "/phase_roles/new").to route_to("phase_roles#new")
    end

    it "routes to #show" do
      expect(:get => "/phase_roles/1").to route_to("phase_roles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/phase_roles/1/edit").to route_to("phase_roles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/phase_roles").to route_to("phase_roles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/phase_roles/1").to route_to("phase_roles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/phase_roles/1").to route_to("phase_roles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/phase_roles/1").to route_to("phase_roles#destroy", :id => "1")
    end

  end
end
