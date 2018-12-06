require "rails_helper"

RSpec.describe GroupInvitationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/group_invitations").to route_to("group_invitations#index")
    end


    it "routes to #show" do
      expect(:get => "/group_invitations/1").to route_to("group_invitations#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/group_invitations").to route_to("group_invitations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/group_invitations/1").to route_to("group_invitations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/group_invitations/1").to route_to("group_invitations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/group_invitations/1").to route_to("group_invitations#destroy", :id => "1")
    end

  end
end
