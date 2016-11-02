When(/^I open login page$/) do
  on(UnloggedHomePage).open_login_page
end

When(/^I login with valid credentials$/) do
  on(LoginPage).enter_login_credentials($login, 'qwerty')
  @current_page.submit_login
end


Then(/^I am logged in$/) do
  expect(on(UnloggedHomePage).login_name_element.text).to eql($login)
end
