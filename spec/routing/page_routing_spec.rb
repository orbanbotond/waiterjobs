require "spec_helper"

describe PagesController do
  describe "routing" do
    it "routes to #page" do
      get("/any_other_path").should route_to( {:controller=>"pages", :action=>"page", :sefurl=>"any_other_path"})
    end
  end
end