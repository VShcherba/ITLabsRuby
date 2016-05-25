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


=begin
module Directories
  def open_directory(directory)
    hovers = @b.link(text:'Hovers')
    dropdowns = @b.link(text:'Dropdown')
    directory.when_present.click
  end
end
=end

def open_hover_directory
  hovers_directory = @b.link(text:'Hovers')
  hovers_directory.when_present.click
end
def hover_element
  first_element = @b.divs(class:'figure').first
  first_element.when_present.hover
end

def open_dropdown_directory
  dropdown_directory = @b.link(text:'Dropdown')
  dropdown_directory.when_present.click
end

def select_from_dropdown
  dropdown = @b.select_list(id:'dropdown')
  dropdown.when_present.select 'Option 2'
end

def open_drag_and_drop_directory
  drag_and_drop_directory = @b.link(text:'Drag and Drop')
  drag_and_drop_directory.when_present.click
end
def drag_object
  object_a = @b.div(id:'column-a')
  object_b = @b.div(id:'column-b')
  dnd_javascript = File.read(Dir.pwd + '/dnd.js')
  @b.execute_script(dnd_javascript+"$('#column-a').simulateDragDrop({ dropTarget: '#column-b'});")
end

def open_key_presses_directory
  key_presses = @b.link(text:'Key Presses')
  key_presses.when_present.click
end
def press_shift_key
  key_to_press = :shift
  @b.send_keys key_to_press
end

# Test Cases methods
def test_hover_over
  puts 'test_hover_over'
  open_hover_directory
  hover_element
  assert(@b.div(class:'figcaption').text.include? 'name: user1')
end

def test_select_from_dropdown
  puts 'test_select_from_dropdown'
  open_dropdown_directory
  select_from_dropdown
  assert(@b.select_list(id:'dropdown').selected? 'Option 2')
end

def test_drag_and_drop
  puts ' test_drag_and_drop'
  open_drag_and_drop_directory
  drag_object
  assert(@b.div(id:'column-a').text.include? 'B')
end

def test_key_presses
  puts 'test_key_presses'
  open_key_presses_directory
  press_shift_key
  assert(@b.div(class:'example').text.include? 'You entered: SHIFT')
end
def teardown
@b.quit
end

end
