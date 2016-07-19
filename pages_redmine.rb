module SignIn

    def registration
      register_button = @b.link(class:'register')
      register_button.click
      @login = 'Madowl' + rand(9999).to_s

      @b.text_field(id:'user_login').set @login
      @b.text_field(id:'user_password').set 'qwerty'
      @b.text_field(id:'user_password_confirmation').set 'qwerty'
      @b.text_field(id:'user_firstname').set 'first name'
      @b.text_field(id:'user_lastname').set 'last name'
      @b.text_field(id:'user_mail').set @login + '@mailinator.com'
      @b.button(name:'commit').click
    end
end

module RedmineBasic

     def create_project
      project_name = "Madowl_project_" + rand(9999).to_s
      @b.link(class:'projects').click
      @b.link(class:'icon-add').click
      @b.text_field(id:'project_name').set project_name
      @b.checkbox(id:'project_is_public').clear
      @b.button(name:'commit').click
    end
    def create_feature
      @b.link(class:'new-issue').click
      @b.select_list(id:'issue_tracker_id').select 'Feature'
      @b.text_field(id:'issue_subject').set 'First feature'
      @b.button(name:'commit').click
    end
    def create_bug
      @b.link(class:'new-issue').click
      @b.select_list(id:'issue_tracker_id').select 'Bug'
      @b.text_field(id:'issue_subject').set 'First bug'
      @b.button(name:'commit').click
    end
    def create_support
      @b.link(class:'new-issue').click
      @b.select_list(id:'issue_tracker_id').when_present.select 'Support'
      @b.text_field(id:'issue_subject').when_present.set 'First support issue'
      @b.button(name:'commit').click
    end

    def open_issues
      @b.link(class:'issues').click
    end

    def open_bug_from_list
      @b.link(text:'First bug').click
    end

    def add_to_watchers
      @b.link(css:'a[href*="watchers/watch"]').click
    end
end
