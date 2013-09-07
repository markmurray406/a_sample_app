require 'spec_helper'

describe "skills/new" do
  before(:each) do
    assign(:skill, stub_model(Skill,
      :summary => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new skill form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => skills_path, :method => "post" do
      assert_select "input#skill_summary", :name => "skill[summary]"
      assert_select "input#skill_description", :name => "skill[description]"
    end
  end
end
