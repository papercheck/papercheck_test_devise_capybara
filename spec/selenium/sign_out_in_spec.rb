require "rubygems"
gem "rspec"
require 'spec'
gem "warnold-selenium-client"
require "selenium/client"
require "selenium/rspec/spec_helper"

describe "sign_out_in_spec" do
  attr_reader :selenium_driver
  alias :page :selenium_driver

  before(:all) do
    @verification_errors = []
    @selenium_driver = Selenium::Client::Driver.new \
      :host => "localhost",
      :port => 4444,
      :browser => "*firefox",
      :url => "http://localhost:3000/",
      :timeout_in_second => 60
  end

  before(:each) do
    @selenium_driver.start_new_browser_session
  end

  append_after(:each) do
    @selenium_driver.close_current_browser_session
    @verification_errors.should == []
  end

  it "test_sign_out_in_spec" do
    page.open "/users/sign_out"
    page.open "/users/sign_in"
    page.type "user_email", "joe3@example.com"
    page.type "user_email", "joe@example.com"
    page.type "user_password", "password"
    page.click "user_submit"
    page.wait_for_page_to_load "30000"
    assert_equal "Signed in successfully.", page.get_text("//p[1]")
  end
end