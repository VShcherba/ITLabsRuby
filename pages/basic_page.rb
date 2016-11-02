class BasicPage
  include PageObject


  link :home_button, class:'home'
  link :projects, class:'projects'
  link :my_account, class: 'my-account'
  link :sign_out, class:'logout'

  def open_projects_page
    self.projects
  end
  def open_my_account_page
    self.my_account
  end

end


