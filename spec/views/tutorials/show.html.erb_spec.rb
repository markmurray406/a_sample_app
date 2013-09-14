require 'spec_helper'

describe "tutorials/show" do
  before(:each) do
    @tutorial = assign(:tutorial, stub_model(Tutorial,
      :summary => "Summary",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Summary/)
    rendered.should match(/Description/)
  end
end
