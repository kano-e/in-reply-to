require 'rails_helper'

RSpec.describe "Worries", type: :request do
  describe "GET /worries" do
    it "works! (now write some real specs)" do
      get worries_path
      expect(response).to have_http_status(200)
    end
  end
end
