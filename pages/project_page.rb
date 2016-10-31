class ProjectPage < BasicPage

  div :notification, id: 'flash_notice'
  link :versions_tab, id:'tab-versions'
  link :new_issue, class:'new-issue'
  link :new_version, css: '#tab-content-versions .icon.icon-add'
  table :versions_table, css: '.list.versions'



  def open_projects_versions
    self.versions_tab
  end

  def create_new_version
    self.new_version
  end
end