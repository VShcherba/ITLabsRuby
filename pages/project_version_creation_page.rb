class ProjectVersionCreationPage < BasicPage

  text_field :version_name, id:'version_name'
  button :create, name:'commit'

  def set_versions_name(name)
    self.version_name = name
  end

  def submit_creation
    self.create
  end
end