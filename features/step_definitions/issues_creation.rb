When(/^I open issues tab$/) do
  on(ProjectPage).create_new_issue
end

And(/^I create Feature$/) do
  on(NewIssueCreationPage).select_issue_type('Feature')
  @current_page.set_issue_name('First feature')
  @current_page.create
end
Then(/^Issue with name First feature is created$/) do
  expect(on(IssuePage).issue_info_element.text).to eq('First feature')
end

And(/^I create Bug$/) do
  on(NewIssueCreationPage).select_issue_type('Bug')
  @current_page.set_issue_name('First bug')
  @current_page.create
end
Then(/^Issue with name First bug is created$/) do
  expect(on(IssuePage).issue_info_element.text).to eq('First bug')
end
And(/^I create Support$/) do
  on(NewIssueCreationPage).select_issue_type('Support')
  @current_page.set_issue_name('First support issue')
  @current_page.create
end
Then(/^Issue with name First support issue is created$/) do
  expect(on(IssuePage).issue_info_element.text).to eq('First support issue')
end