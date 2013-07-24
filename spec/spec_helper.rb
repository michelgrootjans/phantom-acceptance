require "capybara/rspec"
require "selenium/webdriver"
require "capybara/poltergeist"

Capybara.run_server     = false
Capybara.default_driver = :selenium
Capybara.javascript_driver = :poltergeist
Capybara.app_host       = "http://www.qframe.be"

Capybara.register_driver :poltergeist do |app|
	Capybara::Poltergeist::Driver.new(app,
                                    phantomjs: "C:\\Users\\Gitte\\Downloads\\phantomjs-1.9.0-windows\\phantomjs-1.9.0-windows\\phantomjs.exe",
                                    :js_errors => false)
end


