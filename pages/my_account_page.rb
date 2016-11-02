class MyAccountPage < BasicPage
  link :change_pass, class:'icon-passwd'
  div :notification_message, id:'flash_notice'

  def click_change_password_link
    change_pass
  end
end