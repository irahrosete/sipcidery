require "rails_helper"

RSpec.describe DrinksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/drinks").to route_to("drinks#index")
    end

    it "routes to #new" do
      expect(get: "/drinks/new").to route_to("drinks#new")
    end

    it "routes to #show" do
      expect(get: "/drinks/1").to route_to("drinks#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/drinks/1/edit").to route_to("drinks#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/drinks").to route_to("drinks#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/drinks/1").to route_to("drinks#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/drinks/1").to route_to("drinks#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/drinks/1").to route_to("drinks#destroy", id: "1")
    end
  end
end
