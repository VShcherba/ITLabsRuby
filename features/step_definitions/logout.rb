When(/^I click on Log out button$/) do
  @current_page.sign_out
end
Then(/^I am logged out$/) do
  expect(on(UnloggedHomePage).login_button_element.visible?).to be_truthy
end