class UnloggedHomePage < BasicPage

  page_url "http://demo.redmine.org"
  link :register_button, class:'register'
  link :login_button, class:'login'
  link :login_name, css: '.user.active'

  def open_registration_page
    register_button
  end

  def open_login_page
    login_button
  end


end