require 'rails_helper'

RSpec.describe "GroupComments", type: :request do
  describe "GET /group_comments" do
    it "works! (now write some real specs)" do
      get group_comments_path
      expect(response).to have_http_status(200)
    end
  end
end
