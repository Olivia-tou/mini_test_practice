require "mini_test_practice/version"

module MiniTestPractice
  class MyClass
    def odd?(value)
      if value % 2 == 0
      return false
      else
        if value / 1 == value 
        return true
        else
        return false
        end
      end
    end
  end
end
