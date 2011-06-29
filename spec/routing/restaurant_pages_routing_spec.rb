require "spec_helper"

describe RestaurantPagesController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/restaurant_pages").should route_to("restaurant_pages#index")
    end

    it "routes to #new" do
      get("/admin/restaurant_pages/new").should route_to("restaurant_pages#new")
    end

    it "routes to #show" do
      get("/admin/restaurant_pages/1").should route_to("restaurant_pages#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/restaurant_pages/1/edit").should route_to("restaurant_pages#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/restaurant_pages").should route_to("restaurant_pages#create")
    end

    it "routes to #update" do
      put("/admin/restaurant_pages/1").should route_to("restaurant_pages#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/restaurant_pages/1").should route_to("restaurant_pages#destroy", :id => "1")
    end

  end
end
