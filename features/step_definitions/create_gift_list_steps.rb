def create_gift_list
	@gift_list ||= {:title => 'lista 1', :description => 'descripcion lista 1'}
end

When /^I create a gift list$/ do
	create_gift_list
	visit '/gift_lists/new'
	fill_in "gift_list_title", :with => @gift_list[:title]
	fill_in "gift_list_description", :with => @gift_list[:description]
	click_button "Create Gift list"
end

Then /^I have one list$/ do
	find_user
	@user.gift_lists.size.should eq(1)
end