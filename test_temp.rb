require 'watir-webdriver'
require 'test/unit'


class TestAdvanced < Test::Unit::TestCase

  def setup
    @b = Watir::Browser.new :firefox
    @b.goto 'https://the-internet.herokuapp.com/'
  end


def open_multiple_windows_directory
  multiple_windows_directory = @b.link(text:'Multiple Windows')
  multiple_windows_directory.when_present.click
end
def open_new_window
  key_to_press = :shift
  @b.send_keys key_to_press
end

# Test Cases methods

def test_key_presses
  puts 'test_key_presses'
  open_key_presses_directory
  press_shift_key
  assert(@b.div(class:'example').text.include? 'You entered: SHIFT')
end
def teardown
#@b.quit
end

end
