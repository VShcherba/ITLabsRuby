require 'watir-webdriver'
require 'test/unit'
require 'rspec'
require_relative '../../features/support/helpers'
require 'page-object'
#require_all 'lib'

World(RSpec::Matchers)
World(Helpers)
World(PageObject::PageFactory)