require 'spec_helper'

describe "textual_pages/index.html.erb" do
  before(:each) do
    assign(:textual_pages, [
      stub_model(TextualPage,
        :meta => "Meta",
        :content => "MyText",
        :title => "Title"
      ),
      stub_model(TextualPage,
        :meta => "Meta",
        :content => "MyText",
        :title => "Title"
      )
    ])
  end

  it "renders a list of textual_pages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Meta".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
