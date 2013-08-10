require 'spec_helper'

describe "attempts/new" do
  before(:each) do
    assign(:attempt, stub_model(Attempt,
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new attempt form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => attempts_path, :method => "post" do
      assert_select "input#attempt_description", :name => "attempt[description]"
    end
  end
end
