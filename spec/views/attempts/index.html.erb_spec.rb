require 'spec_helper'

describe "attempts/index" do
  before(:each) do
    assign(:attempts, [
      stub_model(Attempt,
        :description => "Description"
      ),
      stub_model(Attempt,
        :description => "Description"
      )
    ])
  end

  it "renders a list of attempts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
