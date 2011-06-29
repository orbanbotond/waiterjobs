require 'spec_helper'

describe "restaurant_requests/show.html.erb" do
  before(:each) do
    @restaurant_request = assign(:restaurant_request, stub_model(RestaurantRequest,
      :contact_person => "Contact Person",
      :restaurant_name => "Restaurant Name",
      :phone => "Phone",
      :email => "Email",
      :availability => "Availability"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Contact Person/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Restaurant Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Phone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Availability/)
  end
end
