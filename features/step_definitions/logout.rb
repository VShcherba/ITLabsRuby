When(/^I click on Log out button$/) do
  logout
end
Then(/^I am logged out$/) do
  expect(@b.link(class:'login').visible?).to be_truthy
end