require 'watir-webdriver'

module Helpers
#Support methods

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

def open_my_account_page
  @b.link(class:"my-account").click
end

def click_change_password_link
  @b.link(class:'icon-passwd').click
end
def change_password
  @b.text_field(id:'password').set 'qwerty'
  @b.text_field(id:'new_password').set 'qwe123'
  @b.text_field(id:'new_password_confirmation').set 'qwe123'
  @b.button(name:'commit').click
end

def open_projects_page
  @b.link(class:'projects').click
end

def click_project_creation_link
  @b.link(class:'icon-add').click
end
def create_project
  project_name = "Madowl_project_" + rand(9999).to_s
  @b.text_field(id:'project_name').set project_name
  @b.button(name:'commit').click
end

def open_versions_tab
  @b.link(id:'tab-versions').click
end
def create_project_version
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
end
