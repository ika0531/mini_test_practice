require 'test_helper'

class MiniTestPracticeTest < Minitest::Test
  def setup
    @mini = MiniTestPractice::Main.new
  end

  def test_odd?
    assert @mini.odd?(1) == true, "1 is odd"
    assert @mini.odd?(2) == false, "2 is not odd"
  end 

  def test_check_number?
    assert @mini.check_number?(1900) == true, "check_number failed(1900)"
    assert @mini.check_number?(900) == false, "check_number failed(900)"
    assert @mini.check_number?(1901) == false, "check_number failed(1901)"
  end

  def test_enough_length?
    assert @mini.enough_length?('abc') == true, "enouch_length failed(abc)"
    assert @mini.enough_length?('abcde') == true, "enouch_length failed(abcde)"
    assert @mini.enough_length?('ab') == false, "enouch_length failed(ab)"
    assert @mini.enough_length?('123456789') == false, "enouch_length failed(9)"
  end
  
  def test_divide
    assert @mini.divide(20, 5) == 4, "divide failed(20, 5, 4)"
    assert @mini.divide(22, 5) == 4, "divide failed(22, 5, 4)"
    assert @mini.divide(14, 2) == 7, "divide failed(14, 2, 7)"
    assert @mini.divide(20, 40) == 0, "divide failed(20, 40, 0)"
    assert_raises(ZeroDivisionError){@mini.divide(1, 0)}
  end

  def test_fizz_buzz
    assert @mini.fizz_buzz(1) == "", "fizz_buzz failed(1)"
    assert @mini.fizz_buzz(3) == "Fizz", "fizz_buzz_failed(3)"
    assert @mini.fizz_buzz(5) == "Buzz", "fizz_buzz_failed(5)"
    assert @mini.fizz_buzz(15) == "FizzBuzz", "fizz_buzz_failed(15)"
  end

#  def test_that_it_has_a_version_number
#    refute_nil ::MiniTestPractice::VERSION
#  end

#  def test_it_does_something_useful
#    assert false
#  end
end
