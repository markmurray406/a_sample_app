# See Listing 5.26
def full_title(page_title)
	base_title = "Mntr me"
	if page_title.empty?
		base_title
	else
		"#{base_title} | #{page_title}"
	end
end