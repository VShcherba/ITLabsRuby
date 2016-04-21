Assertions


registered_text = 'Ваша учётная запись активирована. Вы можете войти.'
actuall_text = @b.div(id:'flash_notice').text
assert_equal(registered_text, actuall_text)



assert(@b.text.include? 'Ваша учётная запись активирована. Вы можете войти.')



assert(@b.link(text: @@login).visible?)
assert_equal('http://demo.redmine.org/', @driver.current_url)
