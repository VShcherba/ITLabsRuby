When(/^I login with valid credentials$/) do
  login
end

Then(/^I am logged in$/) do
  expect(@b.link(text: @login).visible?).to be_truthy
end