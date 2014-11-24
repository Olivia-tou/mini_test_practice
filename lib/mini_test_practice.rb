require "mini_test_practice/version"

module MiniTestPractice
# 6-2 odd?
  class MyClass
    def odd?(value)
      if value.is_a?(Integer) and value % 2 != 0
      return true
      else
      return false
      end
    end
  end
end
