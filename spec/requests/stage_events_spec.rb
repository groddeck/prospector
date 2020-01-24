require 'rails_helper'

RSpec.describe "StageEvents", type: :request do
  describe "GET /stage_events" do
    it "works! (now write some real specs)" do
      get stage_events_path
      expect(response).to have_http_status(200)
    end
  end
end
