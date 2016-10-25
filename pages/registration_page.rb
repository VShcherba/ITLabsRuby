require_relative '../pages/basic_page'

class RegistrationPage < BasicPage

  text_field :user_login, id:'user_login'
  text_field :user_password, id:'user_password'
  text_field :user_password_confirmation, id:'user_password_confirmation'
  text_field :user_firstname, id:'user_firstname'
  text_field :user_lastname, id:'user_lastname'
  text_field :user_email, id:'user_mail'
  button :submit_button, name:'commit'


  def fill_registration_form
    @login = 'Madowl' + rand(9999).to_s
    self.user_login= @login
    self.user_password= 'qwerty'
    self.user_password_confirmation= 'qwerty'
    self.user_firstname= 'first name'
    self.self.user_lastname= 'last name'
    self.user_email= @login + '@mailinator.com'
  end

end