require "spec_helper"

describe TextualPagesController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/textual_pages").should route_to("textual_pages#index")
    end

    it "routes to #new" do
      get("/admin/textual_pages/new").should route_to("textual_pages#new")
    end

    it "routes to #show" do
      get("/admin/textual_pages/1").should route_to("textual_pages#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/textual_pages/1/edit").should route_to("textual_pages#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/textual_pages").should route_to("textual_pages#create")
    end

    it "routes to #update" do
      put("/admin/textual_pages/1").should route_to("textual_pages#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/textual_pages/1").should route_to("textual_pages#destroy", :id => "1")
    end

  end
end
