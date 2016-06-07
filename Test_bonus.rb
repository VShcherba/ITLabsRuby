require 'watir-webdriver'
require 'test/unit'
require_relative 'page_checkboxes'

class TestAdvanced < Test::Unit::TestCase
include Checkboxes

def setup
  @b = Watir::Browser.start 'https://the-internet.herokuapp.com/'
end


def test_checkboxes
  open_checkboxes_directory
  mark_checkbox
  unmark_checkbox
  assert(@b.div(class:'example').checkbox(xpath:'//div//input[1]').set?)
  #assert(@b.div(class:'example').checkbox(xpath:'//div//input[2]').set?, 'true')

end
def teardown
  #@b.quit
end
end
