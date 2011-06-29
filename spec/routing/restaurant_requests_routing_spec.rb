require "spec_helper"

describe RestaurantRequestsController do
  describe "routing" do

    it 'should recognize registration route!' do
      # assert_routing '/register-restaurant', :controller =>"restaurant_requests#new"
      get("/register-restaurant").should route_to("restaurant_requests#new")
    end

    it "routes to #index" do
      get("/admin/restaurant_requests").should route_to("restaurant_requests#index")
    end

    it "routes to #new" do
      get("/restaurant_requests/new").should route_to("restaurant_requests#new")
    end

    it "routes to #show" do
      get("/admin/restaurant_requests/1").should route_to("restaurant_requests#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/restaurant_requests/1/edit").should route_to("restaurant_requests#edit", :id => "1")
    end

    it "routes to #create" do
      post("/restaurant_requests").should route_to("restaurant_requests#create")
    end

    it "routes to #update" do
      put("/admin/restaurant_requests/1").should route_to("restaurant_requests#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/restaurant_requests/1").should route_to("restaurant_requests#destroy", :id => "1")
    end

  end
end
