require "spec_helper"

describe "searching google", type: :feature, :js => true do
	it "for qframe" do
		visit "/"
		#fill_in "gbqfq", with: "qframe"
		#click_button "gbqfb"

		page.should have_text "Quality .NET Solutions"
	end
end