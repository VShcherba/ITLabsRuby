require 'watir-webdriver'
require 'test/unit'

class TestAdvanced < Test::Unit::TestCase

  def setup
    @b = Watir::Browser.new :firefox
    @b.goto 'https://the-internet.herokuapp.com/'
  end

# Support variables
=begin
@hovers_directory = @b.link(xpath:'a[text()="Hovers"]')
@drag_and_drop_directory = @b.link(xpath:'a[text()="Drag and Drop"]')
@dropdown_directory = @b.link(xpath:'a[text()="Dropdown"]')
@frames_directory = @b.link(xpath:'a[text()="Frames"]')
@iframe_directory = @b.link(xpath:'a[text()="iFrame"]')
@key_presses_directory = @b.link(xpath:'a[text()="Key Presses"]')
@jquery_directory = @b.link(xpath:'a[text()="JQuery UI Menus"]')
@js_alerts_directory = @b.link(xpath:'a[text()="JavaScript Alerts"]')
@multiple_windows_directory = @b.link(xpath:'a[text()="Multiple Windows"]')
=end

def open_hover_directory
  hovers_directory = @b.link(xpath:"a[text()='Hovers']")
  hovers_directory.click
end

# Test Cases methods
def test_hover_over
  open_hover_directory
end

def teardown
#@b.quit
end

end
