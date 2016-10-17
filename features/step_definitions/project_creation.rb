When(/^I open projects page$/) do
  open_projects_page
end
And(/^I click create new project$/) do
  click_project_creation_link
end
And(/^Submit data for new project$/) do
  create_project
end
Then(/^New project is created$/) do
  expect(@b.text).to include("Создание успешно.").or include("Successful creation.")
end