require 'watir-webdriver'
require 'test/unit'
require 'rspec'
require 'require_all'
require 'page-object'
require_all 'pages'

require_relative '../../features/support/helpers'


World(RSpec::Matchers)
World(Helpers)
World(PageObject::PageFactory)