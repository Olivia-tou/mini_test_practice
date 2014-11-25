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
  
# 6-5 divide
  def divide(value1,value2) 
       if value2 != 0       
          result = value1 / value2
       return result
       else 
       return 'error!'  
       end
  end

# 6-6 fizz_buzz
   def fizz_buzz(i)      
   return "Fizz"[i%3*4,4].to_s + "Buzz"[i%5*4,4].to_s
   end 
end

# 6-7 Hello
class MyHello
    def hello
    puts  'Hello!'
    end
end
end
