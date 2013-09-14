require 'spec_helper'

describe "tutorials/new" do
  before(:each) do
    assign(:tutorial, stub_model(Tutorial,
      :summary => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new tutorial form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tutorials_path, :method => "post" do
      assert_select "input#tutorial_summary", :name => "tutorial[summary]"
      assert_select "input#tutorial_description", :name => "tutorial[description]"
    end
  end
end
