require 'rails_helper'

RSpec.describe "GroupInvitations", type: :request do
  describe "GET /group_invitations" do
    it "works! (now write some real specs)" do
      get group_invitations_path
      expect(response).to have_http_status(200)
    end
  end
end
