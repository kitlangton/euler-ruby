require 'minitest/autorun'
require_relative 'fibonacci'

class FibonacciTest < MiniTest::Test
  def test_sum_of_even_numbers_to_four_million
    assert_equal 4613732, Fibonacci.sum_of_even_numbers_to(4000000)
  end
end
