require 'minitest_helper'

class TestMiniTestPractice < MiniTest::Unit::TestCase
  def setup
    @my_class = MiniTestPractice::MyClass.new
  end
  
  def test_that_it_has_a_version_number
    refute_nil ::MiniTestPractice::VERSION
  end
  
  def test_odd?
    assert_equal true, @my_class.odd?(1)
    assert_equal false, @my_class.odd?(100)
    assert_equal true, @my_class.odd?(13)
    assert_equal false, @my_class.odd?(0)
    assert_equal false, @my_class.odd?(2.3)
  end
end
