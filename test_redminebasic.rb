require 'selenium-webdriver'
require 'test/unit'

class TestRedmineBasics < Test::Unit::TestCase

  def setup
    @browser = Watir::WebDriver.new :firefox
    @browser.goto 'http://demo.redmine.org'
  end

  def registration

=begin
def test_positive
  register_user

  expected_text = 'Your account has been activated. You can now log in.'
  actual_text = @driver.find_element(:id, 'flash_notice').text
  assert_equal(expected_text, actual_text)
end

def test_log_out
  register_user

  @driver.find_element(:class, 'logout').click
  sleep 3

  login_button = @driver.find_element(:class, 'login')
  assert(login_button.displayed?)
  assert_equal('http://demo.redmine.org/', @driver.current_url)
end
=end

  end
  def teardown
    @browser.quit
  end
end
