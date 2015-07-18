require "mini_test_practice/version"

module MiniTestPractice
  # Your code goes here...
  class Main
    def odd?(v)
      return (v % 2) == 1
    end

    def check_number?(n)
      return (n % 2 == 0 && !(n < 1000 || n > 10000))
    end
    
    def enough_length?(s)
      return (s.length >= 3 && s.length <= 8)
    end

    def divide(a, b)
      return a / b
    end

    def fizz_buzz(n)
      str = ""
      str += "Fizz" if n % 3 == 0
      str += "Buzz" if n % 5 == 0
      return str
    end
  end

end
