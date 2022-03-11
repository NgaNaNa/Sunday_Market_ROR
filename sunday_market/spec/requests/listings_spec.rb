require 'rails_helper'

RSpec.describe "Listings", type: :request do
  describe "GET /listings" do
    
    it "should respond with 200 Successful response" do
      get '/listings'
      expect(response).to have_http_status(200)
    end
    
  end
end
