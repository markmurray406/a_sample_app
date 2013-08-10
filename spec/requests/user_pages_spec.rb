# See Listing 5.31
require 'spec_helper'

describe "User pages" do
	subject { page }

	# Creating a profile page test See Listing 7.9
	 describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit users_path(user) }

    it { should have_selector('h1',    text: user.name) }
    it { should have_selector('title', text: user.name) }
  end

	describe "signup page" do
		#Visit the sign up page
		before { visit signup_path }

		#Tests
		it { should have_selector('h1', text: 'Sign up') }
		it { should have_selector('title', text: full_title('Sign up')) }
	end
end