require "rails_helper"
require "jwt"

describe "Api V1 Users Requests", :type => :request do
  context "when user is authenticated" do
    before(:each) do
      @gentian = User.create(first_name: "Gentian", last_name: "Bardhoshi", email: "gentian_b@gmail.com", password: "password")
      token = JWT.encode({user: @gentian.id}, ENV["AUTH_SECRET_KEY"], "HS256")
      header("Authorization", "Bearer #{token}")
    end

    it "GET /users returns a JSON collection of all users" do
      get("/api/v1/users")
      expect(last_response.status).to eq(200)
      expect(json.first["full_name"]).to eq("Gentian Bardhoshi")
    end

    it "GET /users/:id returns a JSON collection of a single user" do
      get("/api/v1/users/#{@gentian.id}")
      expect(last_response.status).to eq(200)
      expect(json["full_name"]).to eq("Gentian Bardhoshi")
    end

    it "POST /users returns a JSON collection of a newly created user" do
      post("/api/v1/users/", params: {first_name: "Clark", last_name: "Kent", email: "Superman@gmail.com", password: "password"} )
      expect(last_response.status).to eq(200)
      expect(json["success"]).to eq("User successfully created")
    end
  end

  context "when user is not authenticated" do
    it "GET /users does not return a JSON collection of all users" do
      get("/api/v1/users")
      expect(last_response.status).to eq(404)
      expect(json["error"]).to eq("unauthorized")
    end

    it "GET /users/:id does not return a JSON collection of a user" do
       get("/api/v1/users/0")
       expect(last_response.status).to eq(404)
       expect(json["error"]).to eq("unauthorized")
    end

    it "POST /users does not return JSON collection of a newly created user" do
      post("/api/v1/users/", params: {first_name: "Bruce", last_name: "Wayne", email: "TheBatman@gmail.com", password: "password"} )
      expect(last_response.status).to eq(404)
      expect(json["error"]).to eq("unauthorized")
   end
 end
end