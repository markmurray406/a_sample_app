require 'spec_helper'
	describe "Static pages" do
	
# Tests for Home page
		describe "Home page" do
			# This test for the presence of the Mntr me in the content
			it "should have the h1 'Mntr me'" do
				visit '/static_pages/home'
				page.should have_selector('h1', :text => 'Mntr me')
			end

			# This test for the presence of the Mntr me in the base title
			it "should have the base title" do
				visit '/static_pages/home'
				page.should have_selector('title', :text => "Mntr me")
			end

			# This test for the presence of the Mntr me in the base title
			it "should not have a custom page title" do
				visit '/static_pages/home'
			page.should_not have_selector('title', :text => '| Home')
			end
		end

# Tests for Help page
	# This test for the presence of the Help in the content
		describe "Help page" do
			it "should have the content 'help'" do
				visit '/static_pages/help'
				page.should have_content('Help')
			end

	# This tests for the presence of Mntr me | Help in the title 	
			it "should have the right title" do
				visit '/static_pages/help'
				page.should have_selector('title',
																	:text => "Mntr me | Help")
			end	
		end	

# Tests for About page
	# This test for the presence of the About in the content
		describe "About page" do
			it "should have the content 'About'" do
				visit '/static_pages/about'
				page.should have_content('About')
			end

	# This tests for the presence of Mntr me | About in the title 		
			it "should have the right title" do
				visit '/static_pages/about'
				page.should have_selector('title',
																	:text => "Mntr me | About")
			end	
		end	
	end
