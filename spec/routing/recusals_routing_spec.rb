require "rails_helper"

RSpec.describe RecusalsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/recusals").to route_to("recusals#index")
    end

    it "routes to #new" do
      expect(:get => "/recusals/new").to route_to("recusals#new")
    end

    it "routes to #show" do
      expect(:get => "/recusals/1").to route_to("recusals#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/recusals/1/edit").to route_to("recusals#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/recusals").to route_to("recusals#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/recusals/1").to route_to("recusals#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/recusals/1").to route_to("recusals#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/recusals/1").to route_to("recusals#destroy", :id => "1")
    end

  end
end
