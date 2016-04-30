require 'watir-webdriver'
require 'test/unit'

class TestRedmineBasics < Test::Unit::TestCase

#Support methods
  def setup
    @b = Watir::Browser.new :firefox
    @b.goto 'http://demo.redmine.org'
  end
  def registration
    register_button = @b.link(class:'register')
    register_button.click
    @@login = "Madowl" + rand(9999).to_s

    @b.text_field(id:'user_login').set @@login
    @b.text_field(id:'user_password').set "qwerty"
    @b.text_field(id:'user_password_confirmation').set "qwerty"
    @b.text_field(id:'user_firstname').set 'first name'
    @b.text_field(id:'user_lastname').set "last name"
    @b.text_field(id:'user_mail').set @@login + "@mailinator.com"
    @b.button(name:'commit').click
  end
  def create_project
    project_name = "Madowl_project_" + rand(9999).to_s
    @b.link(class:'projects').click
    @b.link(class:'icon-add').click
    @b.text_field(id:'project_name').set project_name
    @b.button(name:'commit').click
  end
  def create_project_version
    @b.link(id:'tab-versions').click
    @b.link(xpath:'//a[text()="Новая версия"]').click
    @b.text_field(id:'version_name').set "first_version"
    @b.button(name:'commit').click
  end
  def create_feature
    @b.link(class:'new-issue').click
    @b.select_list(id:'issue_tracker_id').select 'Feature'
    @b.text_field(id:'issue_subject').set 'First feature'
    @b.button(name:'commit').click
  end
  def create_bug
    @b.link(class:'new-issue').click
    @b.select_list(id:'issue_tracker_id').select 'Bug'
    @b.text_field(id:'issue_subject').set 'First bug'
    @b.button(name:'commit').click
  end
  def create_support
    @b.link(class:'new-issue').click
    @b.select_list(id:'issue_tracker_id').select 'Support'
    @b.text_field(id:'issue_subject').set 'First support issue'
    @b.button(name:'commit').click
  end
#TEST Cases
=begin
  def test_create_project
    registration
    create_project
    assert(@b.text.include? "Создание успешно.")
  end
=end
def test_create_issues
  registration
  create_project
  create_feature
  assert(@b.div(class:'subject').text.include? 'First feature')
  create_support
  assert(@b.div(class:'subject').text.include? 'First support issue')
  create_bug
  assert(@b.div(class:'subject').text.include? 'First bug')

end
  def teardown
  #  @b.quit
  end
end
