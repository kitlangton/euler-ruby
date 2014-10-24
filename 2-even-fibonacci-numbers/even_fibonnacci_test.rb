require 'minitest/autorun'
require_relative 'fibonacci'

class FibonacciTest < MiniTest::Test
  def test_fibonacci_numbers_to_89
    assert_equal 1, Fibonacci.sum_of_even_numbers_to(4000000)
  end
end
