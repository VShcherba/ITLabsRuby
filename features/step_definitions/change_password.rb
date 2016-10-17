When(/^I open my account page$/) do
  open_my_account_page
end


And(/^I click change password link$/) do
  click_change_password_link
end


And(/^Submit new password$/) do
  change_password
end

Then(/^My password is updated$/) do
  expect(@b.text).to include('Пароль успешно обновлён.').or include('Password was successfully updated.')
end

