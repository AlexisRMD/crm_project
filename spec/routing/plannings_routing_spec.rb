require "rails_helper"

RSpec.describe PlanningsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/plannings").to route_to("plannings#index")
    end

    it "routes to #new" do
      expect(get: "/plannings/new").to route_to("plannings#new")
    end

    it "routes to #show" do
      expect(get: "/plannings/1").to route_to("plannings#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/plannings/1/edit").to route_to("plannings#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/plannings").to route_to("plannings#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/plannings/1").to route_to("plannings#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/plannings/1").to route_to("plannings#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/plannings/1").to route_to("plannings#destroy", id: "1")
    end
  end
end
