# -*- coding: utf-8 -*-
require 'minitest_helper'

class TestMiniTestPractice < MiniTest::Unit::TestCase
  def setup
    @my_class = MiniTestPractice::MyClass.new
    @my_hello = MiniTestPractice::MyHello.new
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

#6-4 test_enough_length?
  def test_enough_length?
    assert_equal false, @my_class.enough_length?('no')
    assert_equal true, @my_class.enough_length?('yes')
    assert_equal true, @my_class.enough_length?('olivia')
    assert_equal false, @my_class.enough_length?('olivia is me!')
    assert_equal true, @my_class.enough_length?('olivia!!')
    assert_equal false, @my_class.enough_length?('!')
  end

#6-5 test_divide
  def test_divide
    assert_equal 1, @my_class.divide(1,1)  
    assert_equal 3, @my_class.divide(6,2)
    assert_equal 'error!', @my_class.divide(9,0)
    ex = assert_raises(IndexError)do
       [].fetch(1)  
    end
  end

#6-6 fizz_buzz
  def test_fizz_buzz
    assert_equal 'Fizz', @my_class.fizz_buzz(9)
    assert_equal 'Buzz', @my_class.fizz_buzz(25)
    assert_equal 'FizzBuzz', @my_class.fizz_buzz(15)
    assert_equal "", @my_class.fizz_buzz(22)
  end
 
#6-7 Hello 
  def test_my_hello
    out,err = capture_io do
       puts "Hello!"
    end

    assert_equal "Hello!\n", out
    assert_equal nil, @my_hello.hello
  end
end
