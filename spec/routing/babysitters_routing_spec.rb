require "rails_helper"

RSpec.describe BabysittersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/babysitters").to route_to("babysitters#index")
    end

    it "routes to #new" do
      expect(:get => "/babysitters/new").to route_to("babysitters#new")
    end

    it "routes to #show" do
      expect(:get => "/babysitters/1").to route_to("babysitters#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/babysitters/1/edit").to route_to("babysitters#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/babysitters").to route_to("babysitters#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/babysitters/1").to route_to("babysitters#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/babysitters/1").to route_to("babysitters#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/babysitters/1").to route_to("babysitters#destroy", :id => "1")
    end

  end
end
