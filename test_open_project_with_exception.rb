require 'test/unit'
require 'watir-webdriver'
require_relative 'pages_redmine'
require_relative 'helpers/my_exception'

class TestOpenProjectWithException < Test::Unit::TestCase
  include SignIn
  include RedmineBasic

  def setup
    @b = Watir::Browser.start 'http://demo.redmine.org'
  end

  def test_open_project

    register
    begin
    open_project(RANDOM_PROJECT_NAME)

    rescue Watir::Exception::UnknownObjectException
      begin
        raise MyErrorMessage.new(RANDOM_PROJECT_NAME)
      rescue MyErrorMessage => e
        e.explaine
      end
      create_project(RANDOM_PROJECT_NAME)
      open_project(RANDOM_PROJECT_NAME)
    end

    assert(@b.div(id:'quick-search').text.include?(RANDOM_PROJECT_NAME))
  end

  def teardown
    @b.quit
  end

end