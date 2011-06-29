require 'spec_helper'

describe "textual_pages/edit.html.erb" do
  before(:each) do
    @textual_page = assign(:textual_page, stub_model(TextualPage,
      :meta => "MyString",
      :content => "MyText",
      :title => "MyString"
    ))
  end

  it "renders the edit textual_page form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => textual_pages_path(@textual_page), :method => "post" do
      assert_select "input#textual_page_meta", :name => "textual_page[meta]"
      assert_select "textarea#textual_page_content", :name => "textual_page[content]"
      assert_select "input#textual_page_title", :name => "textual_page[title]"
    end
  end
end
