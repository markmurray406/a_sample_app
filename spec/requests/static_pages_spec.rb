require 'spec_helper'
	describe "Static pages" do

		subject { page } #, see Listing 5.26 and 5.27
	
# Tests for Home page
		# see Listing 5.20 for how visit root_path is contructed
		describe "Home page" do
			# See page 259 on before method
			before { visit root_path }
				# This test for the presence of the Mntr me in the content, see Listing 5.27
				it { should have_selector('h1', text: 'Mntr me') }

				# This test for the presence of the Mntr me in the base title, see Listing 5.27
				it { should have_selector('title', text: full_title('')) }

				# This test for the presence of the Mntr me in the base title, see Listing 5.27
				it { should_not have_selector 'title', text: '| Home' }
		end

	# Tests for Help page
		describe "Help page" do
			before { visit help_path }
				# This test for the presence of the Help in the content, see Listing 5.27
				it { should have_selector('h1', text: 'Help') }

				# This tests for the presence of Mntr me | Help in the title, see Listing 5.27 	
				it { should have_selector('title', text: full_title('Help')) }
		end	

	# Tests for About page
		describe "About page" do
			before { visit about_path }
				# This test for the presence of the About in the content, see Listing 5.27
				it { should have_selector('h1', text: 'About') }

				# This tests for the presence of Mntr me | About in the title, see Listing 5.27 		
				it { should have_selector('title', text: full_title('About Us')) }
		end	

	# Tests for Contact page
		describe "Contact page" do
			before { visit contact_path }
				# This test for the presence of the Contact in the content, see Listing 5.27	
				it { should have_selector('h1', text: 'Contact') }

				# This tests for the presence of Mntr me | About in the title, see Listing 5.27 	
				it { should have_selector('title', text: full_title('Contact')) }
		end

	#------------------------- # Introduction and Setup pages ------------------------- 
		# Tests for About You page
		describe "About You page" do
			before { visit aboutyou_path }
				# This test for the presence of the About You in the content, see Listing 5.27
				it { should have_selector('h1', text: 'About You') }

				# This tests for the presence of Mntr me | About You in the title, see Listing 5.27 	
				it { should have_selector('title', text: full_title('AboutYou')) }
		end		

		# Tests for Doing Introduction page
		describe "Do-it page" do
			before { visit do_it_path }
				# This test for the presence of the About You in the content, see Listing 5.27
				it { should have_selector('h1', text: 'What do you want to do with your life?') }

				# This tests for the presence of Mntr me | About You in the title, see Listing 5.27 	
				it { should have_selector('title', text: full_title('Do it')) }
		end	

		# Tests for Goals page
		describe "Goals page" do
			before { visit goals_path }
				# This test for the presence of the Barriers in the content, see Listing 5.27
				it { should have_selector('h1', text: 'goal') }

				# This tests for the presence of Mntr me | About You in the title, see Listing 5.27 	
				it { should have_selector('title', text: full_title('Goals')) }
		end	

		# Tests for Linkedin auth filler page
		describe "Linkedin page" do
			before { visit aboutyou_path }
				# This test for the presence of the About You in the content, see Listing 5.27
				#it { should have_selector('h1', text: 'About You') }

				# This tests for the presence of Mntr me | About You in the title, see Listing 5.27 	
				#it { should have_selector('title', text: full_title('AboutYou')) }
		end	

end		
