require "spec_helper"

describe "searching google", type: :feature, js: true do
	it "for qframe" do
		visit "/"
		fill_in :q, with: "qframe"
		click_button "gbqfb"

		page.should have_text "www.qframe.be"
	end
end