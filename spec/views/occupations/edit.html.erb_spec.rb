require 'spec_helper'

describe "occupations/edit" do
  before(:each) do
    @occupation = assign(:occupation, stub_model(Occupation,
      :description => "MyString"
    ))
  end

  it "renders the edit occupation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => occupations_path(@occupation), :method => "post" do
      assert_select "input#occupation_description", :name => "occupation[description]"
    end
  end
end
