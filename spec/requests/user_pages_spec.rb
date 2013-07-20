# See Listing 5.31
require 'spec_helper'

describe "User pages" do
	subject { page }

	describe "signup page" do
		#Visit the sign up page
		before { visit signup_path }

		#Tests
		it { should have_selector('h1', text: 'Sign up') }
		it { should have_selector('title', text: full_title('Sign up')) }
	end
end