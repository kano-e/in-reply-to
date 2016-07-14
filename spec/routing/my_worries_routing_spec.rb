require "rails_helper"

RSpec.describe MyWorriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/my_worries").to route_to("my_worries#index")
    end

    it "routes to #new" do
      expect(:get => "/my_worries/new").to route_to("my_worries#new")
    end

    it "routes to #show" do
      expect(:get => "/my_worries/1").to route_to("my_worries#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/my_worries/1/edit").to route_to("my_worries#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/my_worries").to route_to("my_worries#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/my_worries/1").to route_to("my_worries#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/my_worries/1").to route_to("my_worries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/my_worries/1").to route_to("my_worries#destroy", :id => "1")
    end

  end
end
