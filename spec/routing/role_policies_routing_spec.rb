require "rails_helper"

RSpec.describe RolePoliciesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/role_policies").to route_to("role_policies#index")
    end

    it "routes to #new" do
      expect(:get => "/role_policies/new").to route_to("role_policies#new")
    end

    it "routes to #show" do
      expect(:get => "/role_policies/1").to route_to("role_policies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/role_policies/1/edit").to route_to("role_policies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/role_policies").to route_to("role_policies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/role_policies/1").to route_to("role_policies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/role_policies/1").to route_to("role_policies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/role_policies/1").to route_to("role_policies#destroy", :id => "1")
    end

  end
end
