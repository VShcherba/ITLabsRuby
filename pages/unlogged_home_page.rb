require_relative '../pages/basic_page'

class UnloggedHomePage < BasicPage

  page_url "http://demo.redmine.org"
  link :register_button, class:'register'
  link :login_button, class:'login'

end