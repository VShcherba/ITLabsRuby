require 'watir-webdriver'
require 'test/unit'


class TestAdvanced < Test::Unit::TestCase

  def setup
    @b = Watir::Browser.new :firefox
    @b.goto 'https://the-internet.herokuapp.com/'
  end


def open_iframe_directory
  frames_directory = @b.link(text:'Frames')
  frames_directory.when_present.click

  iframe_directory = @b.link(text:'iFrame')
  iframe_directory.when_present.click
end
def type_in_iframe
    @b.iframe(id:'mce_0_ifr').send_keys '  New text message'
end
# Test Cases methods

def test_type_in_iframe
  puts 'test_use_iframe'
  open_iframe_directory
  type_in_iframe
  @b.iframe(id:'mce_0_ifr').text.include? 'Your content goes here.'
  #assert(@b.iframe(id:'mce_0_ifr').text.include? 'Your content goes here.')
end
def teardown
#@b.quit
end

end
