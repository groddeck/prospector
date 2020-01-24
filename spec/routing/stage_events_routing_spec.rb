require "rails_helper"

RSpec.describe StageEventsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/stage_events").to route_to("stage_events#index")
    end

    it "routes to #new" do
      expect(:get => "/stage_events/new").to route_to("stage_events#new")
    end

    it "routes to #show" do
      expect(:get => "/stage_events/1").to route_to("stage_events#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/stage_events/1/edit").to route_to("stage_events#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/stage_events").to route_to("stage_events#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/stage_events/1").to route_to("stage_events#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/stage_events/1").to route_to("stage_events#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/stage_events/1").to route_to("stage_events#destroy", :id => "1")
    end
  end
end
