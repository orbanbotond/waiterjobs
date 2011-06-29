require 'spec_helper'

describe "textual_pages/show.html.erb" do
  before(:each) do
    @textual_page = assign(:textual_page, stub_model(TextualPage,
      :meta => "Meta",
      :content => "MyText",
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Meta/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
  end
end
