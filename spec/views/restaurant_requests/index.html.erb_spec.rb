require 'spec_helper'

describe "restaurant_requests/index.html.erb" do
  before(:each) do
    assign(:restaurant_requests, [
      stub_model(RestaurantRequest,
        :contact_person => "Contact Person",
        :restaurant_name => "Restaurant Name",
        :phone => "Phone",
        :email => "Email",
        :availability => "Availability"
      ),
      stub_model(RestaurantRequest,
        :contact_person => "Contact Person",
        :restaurant_name => "Restaurant Name",
        :phone => "Phone",
        :email => "Email",
        :availability => "Availability"
      )
    ])
  end

  it "renders a list of restaurant_requests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Contact Person".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Restaurant Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Availability".to_s, :count => 2
  end
end
