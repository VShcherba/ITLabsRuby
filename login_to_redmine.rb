require 'watir-webdriver'
require 'test-unit'

@b = Watir::Browser.new :firefox

@b.goto 'http://demo.redmine.org'
register = @b.link(class:'register')
register.click
login = 'Heyyo'
@b.text_field(id:'user_login').set(login)

@b.text_field(id:'user_password').set('qwerty')
@b.text_field(id:'user_password_confirmation').set('qwerty')
@b.text_field(id:'user_firstname').set('first name')
@b.text_field(id:'user_lastname').set('last name')
@b.text_field(id:'user_mail').set('qweasd@mailinator.com')
@b.button(value:'Submit').click

fail unless @b.link(class:'user').text.include? 'login'

@b.link(class:'projects').click
@b.link(class:'icon-add').click

@b.text_field(id:'project_name').set 'first test project'
@b.text_field(id:'project_identifier').set 'first-test-project123'
@b.button(value:'Create').click

fail unless @b.div(id:'flash_notice').text.include? 'Successful creation'

@b.quit
