require 'spec_helper'

describe "restaurant_pages/new.html.erb" do
  before(:each) do
    assign(:restaurant_page, stub_model(RestaurantPage,
      :address => "MyText",
      :meta => "MyString",
      :content => "MyText",
      :city => "MyString",
      :sefurl => "MyString",
      :name => "MyString",
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new restaurant_page form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => restaurant_pages_path, :method => "post" do
      assert_select "textarea#restaurant_page_address", :name => "restaurant_page[address]"
      assert_select "input#restaurant_page_meta", :name => "restaurant_page[meta]"
      assert_select "textarea#restaurant_page_content", :name => "restaurant_page[content]"
      assert_select "input#restaurant_page_city", :name => "restaurant_page[city]"
      assert_select "input#restaurant_page_sefurl", :name => "restaurant_page[sefurl]"
      assert_select "input#restaurant_page_name", :name => "restaurant_page[name]"
      assert_select "input#restaurant_page_title", :name => "restaurant_page[title]"
    end
  end
end
