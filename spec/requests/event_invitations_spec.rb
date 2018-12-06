require 'rails_helper'

RSpec.describe "EventInvitations", type: :request do
  describe "GET /event_invitations" do
    it "works! (now write some real specs)" do
      get event_invitations_path
      expect(response).to have_http_status(200)
    end
  end
end
