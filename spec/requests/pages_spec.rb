require 'spec_helper'

describe "Pages" do
  describe "Valid page" do
    before(:each) do
      @page = Factory :textual_page
    end
    # it "should contain the right title" do
    it "should contain the right title", :js => true do
      # get static_path(@page.sefurl)
      # get "/#{@page.sefurl}"
      visit "/#{@page.sefurl}"
      save_and_open_page
      
      find(:xpath, '//title').text.should eql(@page.title)
      # html.should match Regexp.new("<title>#{@page.title}")
      # page.should have_selector('title', :text => @page.title)
    end
  end
end
