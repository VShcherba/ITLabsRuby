class ChangePassPage < BasicPage

  text_field :current_password, id:'password'
  text_field :new_password, id:'new_password'
  text_field :new_pass_confirm, id:'new_password_confirmation'
  button :confirm, name:'commit'

  def change_password_to(current,new)
    self.current_password= current
    self.new_password= new
    self.new_pass_confirm= new
    self.confirm
  end

end