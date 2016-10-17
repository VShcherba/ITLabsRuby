When(/^I open versions page$/) do
  open_versions_tab
end
And(/^Submit data for new version of the project$/) do
  create_project_version
end
Then(/^New version of the project is created$/) do
  expect(@b.link(text:'first_version').visible?).to be_truthy
  expect(@b.text).to include("Создание успешно.").or include("Successful creation.")
end