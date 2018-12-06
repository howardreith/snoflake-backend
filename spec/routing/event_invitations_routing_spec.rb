require "rails_helper"

RSpec.describe EventInvitationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/event_invitations").to route_to("event_invitations#index")
    end


    it "routes to #show" do
      expect(:get => "/event_invitations/1").to route_to("event_invitations#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/event_invitations").to route_to("event_invitations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/event_invitations/1").to route_to("event_invitations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/event_invitations/1").to route_to("event_invitations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/event_invitations/1").to route_to("event_invitations#destroy", :id => "1")
    end

  end
end
