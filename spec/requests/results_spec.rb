require 'rails_helper'

RSpec.describe "Results", type: :request do
  describe "GET /text" do
    it "returns http success" do
      get "/results/text"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /image" do
    it "returns http success" do
      get "/results/image"
      expect(response).to have_http_status(:success)
    end
  end

end
