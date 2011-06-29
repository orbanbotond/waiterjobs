require 'spec_helper'

describe "restaurant_requests/edit.html.erb" do
  before(:each) do
    @restaurant_request = assign(:restaurant_request, stub_model(RestaurantRequest,
      :contact_person => "MyString",
      :restaurant_name => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :availability => "MyString"
    ))
  end

  it "renders the edit restaurant_request form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => restaurant_requests_path(@restaurant_request), :method => "post" do
      assert_select "input#restaurant_request_contact_person", :name => "restaurant_request[contact_person]"
      assert_select "input#restaurant_request_restaurant_name", :name => "restaurant_request[restaurant_name]"
      assert_select "input#restaurant_request_phone", :name => "restaurant_request[phone]"
      assert_select "input#restaurant_request_email", :name => "restaurant_request[email]"
      assert_select "input#restaurant_request_availability", :name => "restaurant_request[availability]"
    end
  end
end
