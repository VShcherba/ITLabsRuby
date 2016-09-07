require 'test/unit'
require 'rspec'

class TestMatchers < Test::Unit::TestCase
  include RSpec::Matchers

  def test_include
    expect('my string').to include 'my'
  end

  def test_eql
    expect(1).to eql 2
  end

  def test_all
    expect([1,4,56,76,'adsf']).to all(be_a(Numeric))
  end

  def test_be
    expect('1234').to be
  end

  def test_be_nil
    expect(nil).to be_nil
  end

end