require "rails_helper"

RSpec.describe WorriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/worries").to route_to("worries#index")
    end

    it "routes to #new" do
      expect(:get => "/worries/new").to route_to("worries#new")
    end

    it "routes to #show" do
      expect(:get => "/worries/1").to route_to("worries#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/worries/1/edit").to route_to("worries#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/worries").to route_to("worries#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/worries/1").to route_to("worries#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/worries/1").to route_to("worries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/worries/1").to route_to("worries#destroy", :id => "1")
    end

  end
end
