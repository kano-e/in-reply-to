require 'rails_helper'

RSpec.describe "MyWorries", type: :request do
  describe "GET /my_worries" do
    it "works! (now write some real specs)" do
      get my_worries_path
      expect(response).to have_http_status(200)
    end
  end
end
