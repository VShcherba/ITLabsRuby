require 'watir-webdriver'
require 'test/unit'

class TestRedmineBasics < Test::Unit::TestCase

  def setup
    @b = Watir::Browser.new :firefox
    @b.goto 'http://demo.redmine.org'
  end

  def registration
    register_button = @b.link(class:'register')
    register_button.click
    @@login = 'Madowl' + rand(9999).to_s

    @b.text_field(id:'user_login').set @@login
    @b.text_field(id:'user_password').set 'qwerty'
    @b.text_field(id:'user_password_confirmation').set 'qwerty'
    @b.text_field(id:'user_firstname').set 'first name'
    @b.text_field(id:'user_lastname').set 'last name'
    @b.text_field(id:'user_mail').set @@login + '@mailinator.com'
    @b.button(name:'commit').click
  end

  def login
    login_button = @b.link(class:'login')
    login_button.click
    sleep 1
    @b.text_field(id:'username').set @@login
    @b.text_field(id:'password').set 'qwerty'
    @b.button(name:'login').click
  end

  def logout
    @b.link(class:'logout').click
  end

  def test_registration
    registration
    assert(@b.text.include? 'Ваша учётная запись активирована. Вы можете войти.')
  end

  def test_user_login
    login
    assert(@b.link(text: @@login).visible?)
  end

  def test_user_logout
    login
    assert(@b.link(text: @@login).visible?)
    logout
    assert(@b.link(class:'login').visible?)
  end


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


  def teardown
  #  @b.quit
  end
end
