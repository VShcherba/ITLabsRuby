class ProjectCreationPage < BasicPage

  text_field :project_name, id:'project_name'
  checkbox :public_project, id:'project_is_public'
  button :create_button, name:'commit'


  def set_projects_name(projectname)
    self.project_name= projectname
  end

  def set_random_projects_name
    self.project_name= "Madowl_project_" + rand(9999).to_s
  end

  def set_as_not_public
    self.uncheck_public_project
  end

  def confirm_creation
    self.create_button
  end


end