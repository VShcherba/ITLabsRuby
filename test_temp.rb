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
  @b.frame(id:'mce_0_ifr').visible?

  #iframe = frame(id:'mce_0_ifr')
  #@b.switch_to.iframe.text_field(id:'tinymce').send_keys "That's how you rock!"
  #assert(@b.iframe(id:'mce_0_ifr').when_present.div(id:'mceu_13').text.include? 'Your content goes here.')
  #text_field(id:'mce_0').set "That's how you rock!"
end
# Test Cases methods

def test_type_in_iframe
  puts 'test_use_iframe'
  open_iframe_directory
  type_in_iframe

end
def teardown
#@b.quit
end

end
