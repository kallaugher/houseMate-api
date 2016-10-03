require "spec_helper"
require 'jwt'

describe 'Api::V1::SessionsController', :type => :api do
  context 'when the sesssion should exist' do
    before do
     token = JWT.encode({user: User.first.id}, ENV["AUTH_SECRET_KEY"], "HS256")
      header "Authorization", "Bearer #{token}"
      get "/api/v1/signin"
    end

    it 'responds with a 200 status' do
      expect(last_response.status).to eq 200
    end

    it 'responds with json object with key "jwt"' do
      # expect(last_response)
    end
  end

  context 'when the session should not exist' do
    before do
     token = JWT.encode({user: nil}, ENV["AUTH_SECRET_KEY"], "HS256")
      header "Authorization", "Bearer #{token}"
      get "/api/v1/signin"
    end

    it 'responds with a 404 status' do
      expect(last_response.status).to eq 404
    end

    it 'responds with a message of Not found' do
      message = json["errors"].first["detail"]
      expect(message).to eq("Not found")
    end
  end
end
