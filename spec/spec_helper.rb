require "capybara/rspec"
require "capybara/poltergeist"

Capybara.run_server     = false
Capybara.app_host       = "http://www.google.com"

Capybara.default_driver = :poltergeist
Capybara.register_driver :poltergeist do |app|
	Capybara::Poltergeist::Driver.new(app, phantomjs: "C:\\Program Files\\phantomjs-1.9.1-windows\\phantomjs.exe")
end
