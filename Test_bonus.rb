require 'watir-webdriver'
require 'test/unit'

class TestAdvanced < Test::Unit::TestCase

def setup
  #@b = Watir::Browser.new :firefox
  #@b.goto 'https://the-internet.herokuapp.com/'
  @b = Watir::Browser.start 'https://the-internet.herokuapp.com/'

end


def open_checkboxes_directory
  @b.link(text:'Checkboxes').click
end
def mark_checkbox
  @b.div(class:'example').checkbox(xpath:'//div//input[1]').set
end
def unmark_checkbox
  @b.div(class:'example').checkbox(xpath:'//div//input[2]').clear

end

def test_checkboxes
  open_checkboxes_directory
  mark_checkbox
  unmark_checkbox
end
def teardown
  #@b.quit
end
end