require 'watir-webdriver'
require 'test/unit'

@b = Watir::Browser.new :firefox

@b.goto 'http://demo.redmine.org'
register_button = @b.link(class:'register')
register_button.click
login = 'Madowl' + rand(9999).to_s

@b.text_field(id:'user_login').set login

@b.text_field(id:'user_password').set 'qwerty'
@b.text_field(id:'user_password_confirmation').set 'qwerty'
@b.text_field(id:'user_firstname').set 'first name'
@b.text_field(id:'user_lastname').set 'last name'
@b.text_field(id:'user_mail').set login + '@mailinator.com'
@b.button(name:'commit').click
=begin
fail unless @b.link(class:'user').text.include? 'Madowl'

@b.link(class:'projects').click
@b.link(class:'icon-add').click

@b.text_field(id:'project_name').set 'first test project'
@b.text_field(id:'project_identifier').set 'first-test-project123'
@b.button(name:'commit').click

fail unless @b.div(id:'flash_notice').text.include? 'Successful creation'

@b.quit
=end



new_version_button = @b.link(xpath:"//div[@id='tab-content-versions']//a[@class='icon icon-add']")
