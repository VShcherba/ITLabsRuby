require 'watir-webdriver'
require 'test/unit'
require 'rspec'

class TestRedmineBasics < Test::Unit::TestCase
include RSpec::Matchers

#Support methods
  def setup
    @b = Watir::Browser.new :firefox
    @b.goto 'http://demo.redmine.org'
  end
  def registration
    register_button = @b.link(class:'register')
    register_button.click
    @login = 'Madowl' + rand(9999).to_s

    @b.text_field(id:'user_login').set @login
    @b.text_field(id:'user_password').set 'qwerty'
    @b.text_field(id:'user_password_confirmation').set 'qwerty'
    @b.text_field(id:'user_firstname').set 'first name'
    @b.text_field(id:'user_lastname').set 'last name'
    @b.text_field(id:'user_mail').set @login + '@mailinator.com'
    @b.button(name:'commit').click
  end
  def login
    login_button = @b.link(class:'login')
    login_button.click
    @b.text_field(id:'username').when_present.set @login
    @b.text_field(id:'password').set 'qwerty'
    @b.button(name:'login').click
  end
  def logout
    @b.link(class:'logout').click
  end
  def change_password
    @b.link(class:'icon-passwd').click
    @b.text_field(id:'password').set 'qwerty'
    @b.text_field(id:'new_password').set 'qwe123'
    @b.text_field(id:'new_password_confirmation').set 'qwe123'
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
    new_version_button = @b.div(id:'tab-content-versions').link(class:'icon icon-add')
    new_version_button.click
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
    @b.select_list(id:'issue_tracker_id').when_present.select 'Support'
    @b.text_field(id:'issue_subject').when_present.set 'First support issue'
    @b.button(name:'commit').click
  end

#TEST Cases

  def test_registration
    registration
    expect(@b.div(id:'flash_notice').text).to eql('Ваша учётная запись активирована. Вы можете войти.') | eql('Your account has been activated. You can now log in.')
  end

  def test_user_login
    registration
    logout
    login
    expect(@b.link(text: @login).visible?).to be_truthy
  end

  def test_user_logout
    registration
    logout
    expect(@b.link(class:'login').visible?).to be_truthy
  end

  def test_change_password
    registration
    change_password
    expect(@b.text).to include('Пароль успешно обновлён.').or include('Password was successfully updated.')
  end

  def test_create_project
    registration
    create_project
    expect(@b.text).to include("Создание успешно.").or include("Successful creation.")
  end

  def test_create_version
    registration
    create_project
    create_project_version
    expect(@b.link(text:'first_version').visible?).to be_truthy
    expect(@b.text).to include("Создание успешно.").or include("Successful creation.")
  end

  def test_create_issues
    registration
    create_project
    create_feature
    expect(@b.div(class:'subject').text).to eq('First feature')
    create_support
    expect(@b.div(class:'subject').text).to eq('First support issue')
    create_bug
    expect(@b.div(class:'subject').text).to eq('First bug')
  end

  def teardown
  @b.quit
  end
end