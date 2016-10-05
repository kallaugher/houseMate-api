require "rails_helper"
require "jwt"

describe "Api V1 Events Requests", :type => :request do
  context "when user is authenticated" do
    before(:each) do
      @team_headband = Group.create(name: "Team Headband")
      @gentian = User.create(first_name: "Gentian", last_name: "Bardhoshi", email: "gentian_b@gmail.com", password: "password")
      @housewarming = Event.create(name: "Housewarming party", category: "party", created_by: @gentian.id, group_id: @team_headband.id)

      token = JWT.encode({user: @gentian.id}, ENV["AUTH_SECRET_KEY"], "HS256")
      header("Authorization", "Bearer #{token}")
    end

    it "GET /events returns a JSON collection of all events" do
      get("/api/v1/events")
      expect(last_response.status).to eq(200)
      expect(json.first["name"]).to eq("Housewarming party")
    end

    it "GET /events/:id returns a JSON collection of a single event" do
      get("/api/v1/events/#{@housewarming.id}")
      expect(last_response.status).to eq(200)
      expect(json["name"]).to eq("Housewarming party")
    end

    it "POST /events returns success message in JSON" do
      post("/api/v1/events/", params: {name: "Crime-fighting party", category: "party", created_by: "TheBatman"})
      expect(last_response.status).to eq(200)
      expect(json["success"]).to eq("Event successfully created")
    end
  end

  context "when user is not authenticated" do
    it "GET /events does not return a JSON collection of all events" do
      get("/api/v1/events")
      expect(last_response.status).to eq(404)
      expect(json["error"]).to eq("unauthorized")
    end


    it "GET /events/:id does not return a JSON collection of a event" do
       get("/api/v1/events/0")
       expect(last_response.status).to eq(404)
       expect(json["error"]).to eq("unauthorized")
    end

    it "POST /events does not return success message in JSON" do
      post("/api/v1/events/", params: {name: "Crime-fighting party", category: "party", created_by: "TheBatman"})
      expect(last_response.status).to eq(404)
      expect(json["error"]).to eq("unauthorized")
   end
 end
end