require 'spec_helper'

describe "skills/edit" do
  before(:each) do
    @skill = assign(:skill, stub_model(Skill,
      :summary => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit skill form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => skills_path(@skill), :method => "post" do
      assert_select "input#skill_summary", :name => "skill[summary]"
      assert_select "input#skill_description", :name => "skill[description]"
    end
  end
end
