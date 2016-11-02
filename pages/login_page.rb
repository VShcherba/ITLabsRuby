class LoginPage < BasicPage


  text_field :username, id:'username'
  text_field :password, id:'password'
  button :login_button, name:'login'

  def enter_login_credentials(login, pass)
    self.username = login
    self.password= pass
  end

  def submit_login
    login_button
  end

end