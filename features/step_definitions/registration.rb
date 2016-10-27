Given(/^I am on home page$/) do
  visit(UnloggedHomePage)
end

When(/^I open registration page$/) do
  @current_page.open_registration_page
end

When(/^Submit valid credentials$/) do

  on(RegistrationPage).fill_registration_form
  @current_page.submit_registration_form
end


Then(/^My account is registered$/) do
  expect(@current_page.notification_message_element.text).to eql('Ваша учётная запись активирована. Вы можете войти.') | eql('Your account has been activated. You can now log in.')
end