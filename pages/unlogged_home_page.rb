class UnloggedHomePage < BasicPage

  page_url "http://demo.redmine.org"
  link :register_button, class:'register'
  link :login_button, class:'login'

  def open_registration_page
    register_button
  end
end