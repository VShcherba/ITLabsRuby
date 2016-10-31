When(/^I open projects page$/) do
  @current_page.open_projects_page
end
And(/^I click create new project$/) do
  on(ProjectsPage).create_new_project
end
And(/^Submit form with random data$/) do
  on(ProjectCreationPage).set_random_projects_name
  @current_page.confirm_creation
end
Then(/^New project is created$/) do
  expect(on(ProjectPage).notification_element.text).to include("Создание успешно.").or include("Successful creation.")
end