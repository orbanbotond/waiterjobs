require 'spec_helper'

describe "textual_pages/new.html.erb" do
  before(:each) do
    assign(:textual_page, stub_model(TextualPage,
      :meta => "MyString",
      :content => "MyText",
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new textual_page form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => textual_pages_path, :method => "post" do
      assert_select "input#textual_page_meta", :name => "textual_page[meta]"
      assert_select "textarea#textual_page_content", :name => "textual_page[content]"
      assert_select "input#textual_page_title", :name => "textual_page[title]"
    end
  end
end
