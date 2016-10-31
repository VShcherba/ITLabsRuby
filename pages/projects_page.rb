class ProjectsPage < BasicPage


  link :new_project, class: 'icon-add'

  def create_new_project
    new_project
  end


end
