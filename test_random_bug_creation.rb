=begin
2. add to your solution next test

create project
make a random action: create or not a new bug issue
open project page,
             open issues tab
if there is a bug present then add self to watchers
if no then create a new bug issue and then add self to watchers
Verify that there is a bug issue and that current user is a watcher
=end

require 'watir-webdriver'
require 'test/unit'
require_relative 'pages_redmine'

class TestRandomBugCreation < Test::Unit::TestCase
include SignIn
include RedmineBasic
#Support methods
  def setup
    @b = Watir::Browser.new :firefox
    @b.goto 'http://demo.redmine.org'
  end


  def test_create_issues
    registration
    create_project


    random = rand(2)
    if random == 1
      create_bug
    end

    open_issues

    if @b.table(class:'list issues sort-by-id sort-desc').link(text:'First bug').exists?
      open_bug_from_list
      add_to_watchers
    else
      create_bug
      add_to_watchers
    end
   assert(@b.link(text:'Unwatch').visible? || @b.link(text:'Не следить').visible?)
  end
  def teardown
    @b.quit
  end
end
