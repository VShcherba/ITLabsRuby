class BasicPage
  include PageObject


  link :home_button, class:'home'
  link :projects, class:'projects'

  def open_projects_page
    self.projects
  end

end


