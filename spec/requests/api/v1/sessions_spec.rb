require 'spec_helper'
require 'jwt'

describe 'Api V1 Sessions Requests', :type => :request do
  context 'when JSON Web Token Authentication exists' do
     before(:each) do
        @gentian = User.create(first_name: "Gentian", last_name: "Bardhoshi", email: "gb@gmail.com", password: "password")
        @token = JWT.encode({user: @gentian.id}, ENV["AUTH_SECRET_KEY"], "HS256")
        header("Authorization", "Bearer #{@token}")
        post('/api/v1/signin', params: {email: @gentian.email, password: @gentian.password})
        #implement strong params here once client-side json with params is ready
     end

    xit 'responds with a 200 status' do
      expect(last_response.status).to eq(200)
    end

    xit 'responds with json object with key "jwt"' do
      expect(json["jwt"]).to eq(@token)
    end
  end

  context 'when JSON Web Token Authentication does not exist' do
    xit 'raises error when valid user but invalid token is used' do
      gentian = User.create(first_name: "Gentian", last_name: "Bardhoshi", email: "gb@gmail.com", password: "password")
      invalid_token = "NOTREALTOKEN.NONSENSE"
      header("Authorization", "Bearer #{invalid_token}")

      expect { post('/api/v1/signin', params: {email: gentian.email, password: gentian.password}) }.to raise_error(JWT::DecodeError)
    end

    xit 'displays User not found error when valid token but invalid user is used'  do
      invalid_gentian = User.create(first_name: "Gentian", email: "gb@gmail.com", password: "password")
      token = JWT.encode({user: invalid_gentian.id}, ENV["AUTH_SECRET_KEY"], "HS256")
      header("Authorization", "Bearer #{token}")

      expect{ post('/api/v1/signin', params: {email: invalid_gentian.email, password: invalid_gentian.password}) }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end
end
