require 'spec_helper'

describe "attempts/show" do
  before(:each) do
    @attempt = assign(:attempt, stub_model(Attempt,
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
  end
end
