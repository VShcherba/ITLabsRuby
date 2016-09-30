Given(/^I am on home page$/) do
  @b.goto "http://demo.redmine.org"
end

When(/^I open registration page$/) do
  register_button = @b.link(class:'register')
  register_button.click
end

When(/^Submit valid user data$/) do


  @login = 'Madowl' + rand(9999).to_s
  @b.text_field(id:'user_login').set @login
  @b.text_field(id:'user_password').set 'qwerty'
  @b.text_field(id:'user_password_confirmation').set 'qwerty'
  @b.text_field(id:'user_firstname').set 'first name'
  @b.text_field(id:'user_lastname').set 'last name'
  @b.text_field(id:'user_mail').set @login + '@mailinator.com'
  @b.button(name:'commit').click

end


Then(/^My account is registered$/) do
  expect(@b.div(id:'flash_notice').text).to eql('Ваша учётная запись активирована. Вы можете войти.') | eql('Your account has been activated. You can now log in.')
end

