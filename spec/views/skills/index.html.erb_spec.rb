require 'spec_helper'

describe "skills/index" do
  before(:each) do
    assign(:skills, [
      stub_model(Skill,
        :summary => "Summary",
        :description => "Description"
      ),
      stub_model(Skill,
        :summary => "Summary",
        :description => "Description"
      )
    ])
  end

  it "renders a list of skills" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Summary".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
