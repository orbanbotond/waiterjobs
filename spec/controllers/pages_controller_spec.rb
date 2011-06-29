require 'spec_helper'

describe PagesController do
  describe "GET existing restaurant page" do
    before(:each) do
      @rp = Factory :restaurant_page
    end
    it "should return 200" do
      get :page, :sefurl => @rp.sefurl
      response.status.should be(200)
    end
    it "should assign the page" do
      get :page, :sefurl => @rp.sefurl
      assigns(:page).should eql(@rp)
    end
  end
  describe "GET existing textual page" do
    before(:each) do
      @page = Factory(:textual_page)
    end
    it "should return 200" do
      get :page, :sefurl => @page.sefurl
      response.status.should be(200)
    end
    it "should assign the page" do
      get :page, :sefurl => @page.sefurl
      assigns(:page).should eql(@page)
    end
  end
  describe "GET a non-existing restaurant and not existing textual page" do
    it "should return code 404" do
      get :page, :sefuri => "non_existent_restaurant"
      response.status.should be(404)
    end
  end
end
