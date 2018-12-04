require "rails_helper"

RSpec.describe UserEventsPlansController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_events_plans").to route_to("user_events_plans#index")
    end


    it "routes to #show" do
      expect(:get => "/user_events_plans/1").to route_to("user_events_plans#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/user_events_plans").to route_to("user_events_plans#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_events_plans/1").to route_to("user_events_plans#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_events_plans/1").to route_to("user_events_plans#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_events_plans/1").to route_to("user_events_plans#destroy", :id => "1")
    end

  end
end
