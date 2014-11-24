require 'minitest_helper'

class TestMiniTestPractice < MiniTest::Unit::TestCase
  def setup
    @my_class = MiniTestPractice::MyClass.new
  end
  
  def test_that_it_has_a_version_number
    refute_nil ::MiniTestPractice::VERSION
  end
  
#6-2 test_odd?
  def test_odd?
    assert_equal true, @my_class.odd?(1)
    assert_equal false, @my_class.odd?(100)
    assert_equal true, @my_class.odd?(13)
    assert_equal false, @my_class.odd?(0)
    assert_equal false, @my_class.odd?(3.4)
  end

#6-3 test_check_number?
  def test_check_number?
  assert_equal false, @my_class.check_number?(999)
  assert_equal false, @my_class.check_number?(11110)
  assert_equal false, @my_class.check_number?(9999)
  assert_equal true, @my_class.check_number?(1000)
  assert_equal true, @my_class.check_number?(8888)
  end
  
end
