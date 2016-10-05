require "rails_helper"
require "jwt"

describe "Api V1 Groups Requests", :type => :request do
  context "when user is authenticated" do
    before(:each) do
      @team_headband = Group.create(name: "Team Headband")
      @gentian = User.create(first_name: "Gentian", last_name: "Bardhoshi", email: "gentian_b@gmail.com", password: "password")

      token = JWT.encode({user: @gentian.id}, ENV["AUTH_SECRET_KEY"], "HS256")
      header("Authorization", "Bearer #{token}")
    end

    it "GET /groups returns a JSON collection of all groups" do
      get("/api/v1/groups")
      expect(last_response.status).to eq(200)
      expect(json.first["name"]).to eq("Team Headband")
    end

    it "GET /groups/:id returns a JSON collection of a single group" do
      get("/api/v1/groups/#{@team_headband.id}")
      expect(last_response.status).to eq(200)
      expect(json["name"]).to eq("Team Headband")
    end

    it "POST /groups returns success message in JSON" do
      post("/api/v1/groups/", params: {name: "Justice League"})
      expect(last_response.status).to eq(200)
      expect(json["success"]).to eq("Group successfully created")
    end
  end

  context "when user is not authenticated" do
    it "GET /groups does not return a JSON collection of all groups" do
      get("/api/v1/groups")
      expect(last_response.status).to eq(404)
      expect(json["error"]).to eq("unauthorized")
    end


    it "GET /groups/:id does not return a JSON collection of a group" do
       get("/api/v1/groups/0")
       expect(last_response.status).to eq(404)
       expect(json["error"]).to eq("unauthorized")
    end

    it "POST /groups does not return success message in JSON" do
      post("/api/v1/groups/", params: {name: "Justice League"})
      expect(last_response.status).to eq(404)
      expect(json["error"]).to eq("unauthorized")
   end
 end
end