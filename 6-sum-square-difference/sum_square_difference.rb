class SumSquareDifference
  def initialize(number)
    @numbers = (1..number).to_a
  end

  def difference
    (square_of_sums - sum_of_squares).abs
  end

  def sum_of_squares
    @numbers.map { |n| n ** 2 }.reduce(:+)
  end

  def square_of_sums
    @numbers.reduce(:+) ** 2
  end
end
