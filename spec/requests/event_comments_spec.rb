require 'rails_helper'

RSpec.describe "EventComments", type: :request do
  describe "GET /event_comments" do
    it "works! (now write some real specs)" do
      get event_comments_path
      expect(response).to have_http_status(200)
    end
  end
end
