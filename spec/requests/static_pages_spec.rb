require 'spec_helper'
	describe "Static pages" do
		describe "Home page" do
			it "should have the content 'Mntr me'" do
				visit '/static_pages/home'
				page.should have_content('Mntr me')
			end

			it "should have the right title" do
				visit '/static_pages/home'
				page.should have_selector('title',
																	:text => "Mntr me | Home")
			end	
		end

		describe "Help page" do
			it "should have the content 'help'" do
				visit '/static_pages/help'
				page.should have_content('Help')
			end

			it "should have the right title" do
				visit '/static_pages/help'
				page.should have_selector('title',
																	:text => "Mntr me | Help")
			end	
		end	

		describe "About page" do
			it "should have the content 'About'" do
				visit '/static_pages/about'
				page.should have_content('About')
			end

			it "should have the right title" do
				visit '/static_pages/about'
				page.should have_selector('title',
																	:text => "Mntr me | About")
			end	
		end	
	end
