class NewIssueCreationPage < BasicPage

  select_list :issue_type, id:'issue_tracker_id'
  text_field :issue_name, id:'issue_subject'
  button :create, name:'commit'

  def select_issue_type(type)
    self.issue_type= type
  end

  def set_issue_name(name)
    self.issue_name= name
  end

end