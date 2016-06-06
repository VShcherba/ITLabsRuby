require 'watir-webdriver'
require 'test/unit'

class TestAdvanced < Test::Unit::TestCase

  def setup
    @b = Watir::Browser.new :firefox
    @b.goto 'https://the-internet.herokuapp.com/'
  end

  #Hovers
def open_hover_directory
  hovers_directory = @b.link(text:'Hovers')
  hovers_directory.when_present.click
end
def hover_element
  first_element = @b.divs(class:'figure').first
  first_element.when_present.hover
end
  #Dropdown
def open_dropdown_directory
  dropdown_directory = @b.link(text:'Dropdown')
  dropdown_directory.when_present.click
end

def select_from_dropdown
  dropdown = @b.select_list(id:'dropdown')
  dropdown.when_present.select 'Option 2'
end

  #Drag&Drop
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

  #KeyPresses
def open_key_presses_directory
  key_presses = @b.link(text:'Key Presses')
  key_presses.when_present.click
end
def press_shift_key
  key_to_press = :shift
  @b.send_keys key_to_press
end

  #MultipleWindows
def open_multiple_windows_directory
  multiple_windows_directory = @b.link(text:'Multiple Windows')
  multiple_windows_directory.when_present.click
end
def open_new_window
  link_new_window = @b.link(text:'Click Here')
  link_new_window.when_present.click (:shift)
end
def switch_to_new_window
  @b.window(title:'New Window').use
end

  #iFrame
def open_iframe_directory
  frames_directory = @b.link(text:'Frames')
  frames_directory.when_present.click

  iframe_directory = @b.link(text:'iFrame')
  iframe_directory.when_present.click
end
def type_in_iframe
    @b.iframe(id:'mce_0_ifr').send_keys '  New text message'
end

  # JS ALERTS
def open_js_alerts_directory
  js_alerts_directory = @b.link(text:'JavaScript Alerts')
  js_alerts_directory.when_present.click
end
def reveal_js_alert
  @b.button(text:'Click for JS Alert').click
end
def click_on_js_alert
  @b.alert.ok
end

def reveal_js_confirm
  @b.button(text:'Click for JS Confirm').click
end
def close_js_confirm
  @b.alert.close
end

def reveal_js_prompt
  @b.button(text:'Click for JS Prompt').click
end
def answer_in_js_prompt
  @b.alert.set 'Yes'
  @b.alert.ok
end

  #JQuery
def open_js_menu_directory
  js_menu_directory = @b.link(text:'JQuery UI Menus')
  js_menu_directory.when_present.click
end
def navigate_in_menu
  @b.link(text:'Enabled').hover
  @b.link(text:'Back to JQuery UI').when_present.click
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
  puts 'test_drag_and_drop'
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

def test_open_multiple_windows
  puts 'test_open_multiple_windows'
  open_multiple_windows_directory
  open_new_window
  switch_to_new_window
  assert(@b.text.include? 'New Window')
end
  # IFRAMES
def test_type_in_iframe
  puts 'test_use_iframe'
  open_iframe_directory
  type_in_iframe
  assert(@b.iframe(id:'mce_0_ifr').p.text.include? ' New text message')
end

def test_click_on_js_alert
  puts 'test_click_on_js_alert'
  open_js_alerts_directory
  reveal_js_alert
  click_on_js_alert
  assert(@b.p(id:'result').text.include? 'You successfuly clicked an alert')
end
def test_close_js_confirm
  puts 'test_close_js_confirm'
  open_js_alerts_directory
  reveal_js_confirm
  close_js_confirm
  assert(@b.p(id:'result').text.include? 'You clicked: Cancel')
end

def test_answer_in_js_prompt
  puts ' test_answer_in_js_prompt'
  open_js_alerts_directory
  reveal_js_prompt
  answer_in_js_prompt
  assert(@b.p(id:'result').text.include? 'You entered: Yes')
end

def test_jquery_menu_navigation
  puts 'test_jquery_menu_navigation'
  open_js_menu_directory
  navigate_in_menu
  assert(@b.link(text:'Menu').visible?)
end

def teardown
@b.quit
end

end
