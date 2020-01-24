require 'rails_helper'

RSpec.describe "Prospects", type: :request do
  describe "GET /prospects" do
    it "works! (now write some real specs)" do
      get prospects_path
      expect(response).to have_http_status(200)
    end
  end
end
