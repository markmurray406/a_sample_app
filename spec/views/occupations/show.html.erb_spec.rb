require 'spec_helper'

describe "occupations/show" do
  before(:each) do
    @occupation = assign(:occupation, stub_model(Occupation,
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
  end
end
