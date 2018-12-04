require 'rails_helper'

RSpec.describe "UserEventsPlans", type: :request do
  describe "GET /user_events_plans" do
    it "works! (now write some real specs)" do
      get user_events_plans_path
      expect(response).to have_http_status(200)
    end
  end
end
