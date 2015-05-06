require 'test/unit'
require './src/Calc'

class Add < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  def test_integers
    calc = Calc.new
    tests = [[1,1,2],[2,3,5],[2,-4,-2]]
    tests.each { |tc|
      actual = calc.add(tc[0], tc[1])
      expected = tc[2]
      assert_equal expected, actual
    }
  end
end