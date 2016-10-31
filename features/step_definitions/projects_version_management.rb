When(/^I open versions page$/) do
  on(ProjectPage).open_projects_versions
end

And(/^I create new version$/) do
  @current_page.create_new_version
end
And(/^Create new version with name (.*)$/) do |version_name|
  on(ProjectVersionCreationPage).set_versions_name version_name
  @current_page.submit_creation
end

Then(/^New version of the project with name (.*) is created$/) do |version|
  expect(on(ProjectPage).versions_table_element.text).to include(version)
  expect(on(ProjectPage).notification_element.text).to include("Создание успешно.").or include("Successful creation.")
end