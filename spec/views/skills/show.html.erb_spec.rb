require 'spec_helper'

describe "skills/show" do
  before(:each) do
    @skill = assign(:skill, stub_model(Skill,
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
  end
end
