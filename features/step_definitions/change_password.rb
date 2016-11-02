When(/^I open my account page$/) do
  @current_page.open_my_account_page
end


And(/^I click change password link$/) do
  on(MyAccountPage).click_change_password_link
end


And(/^I change password from (.*) to (.*)$/) do |current, new|
  on(ChangePassPage).change_password_to(current,new)
end

Then(/^My password is updated$/) do
  expect(on(MyAccountPage).notification_message_element.text).to include('Пароль успешно обновлён.').or include('Password was successfully updated.')
end

