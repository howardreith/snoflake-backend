require "rails_helper"

RSpec.describe UserGroupsMembershipsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_groups_memberships").to route_to("user_groups_memberships#index")
    end


    it "routes to #show" do
      expect(:get => "/user_groups_memberships/1").to route_to("user_groups_memberships#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/user_groups_memberships").to route_to("user_groups_memberships#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_groups_memberships/1").to route_to("user_groups_memberships#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_groups_memberships/1").to route_to("user_groups_memberships#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_groups_memberships/1").to route_to("user_groups_memberships#destroy", :id => "1")
    end

  end
end