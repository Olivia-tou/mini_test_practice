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

 # 6-3 check_number?
   def check_number?(value)
     if value >= 1000 and value <=9999 and value % 2 == 0
     return true
     else
     return false
     end
   end

# 6-4 enough_length?
  def enough_length?(str)
    if str.length >= 3 and str.length <=8
    return true
    else
    return false
    end
   end

  end
end
