When(/^I open issues tab$/) do
  open_issues_tab
end

And(/^I create Feature$/) do
  create_feature
end
Then(/^Issue with name First feature is created$/) do
  expect(@b.div(class:'subject').text).to eq('First feature')
end

And(/^I create Bug$/) do
  create_bug
end
Then(/^Issue with name First bug is created$/) do
  expect(@b.div(class:'subject').text).to eq('First bug')
end
And(/^I create Support$/) do
  create_support
end
Then(/^Issue with name First support issue is created$/) do
  expect(@b.div(class:'subject').text).to eq('First support issue')
end