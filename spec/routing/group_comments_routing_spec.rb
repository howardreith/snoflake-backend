require "rails_helper"

RSpec.describe GroupCommentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/group_comments").to route_to("group_comments#index")
    end


    it "routes to #show" do
      expect(:get => "/group_comments/1").to route_to("group_comments#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/group_comments").to route_to("group_comments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/group_comments/1").to route_to("group_comments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/group_comments/1").to route_to("group_comments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/group_comments/1").to route_to("group_comments#destroy", :id => "1")
    end

  end
end
