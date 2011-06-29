require 'spec_helper'

describe "restaurant_pages/index.html.erb" do
  before(:each) do
    assign(:restaurant_pages, [
      stub_model(RestaurantPage,
        :address => "MyText",
        :meta => "Meta",
        :content => "Content",
        :city => "City",
        :sefurl => "Sefurl",
        :name => "Name",
        :title => "Title"
      ),
      stub_model(RestaurantPage,
        :address => "MyText",
        :meta => "Meta",
        :content => "Content",
        :city => "City",
        :sefurl => "Sefurl",
        :name => "Name",
        :title => "Title"
      )
    ])
  end

  it "renders a list of restaurant_pages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Meta".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sefurl".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
