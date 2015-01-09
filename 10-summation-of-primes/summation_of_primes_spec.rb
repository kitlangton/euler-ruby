# PROBLEM 10: Summation of primes
# https://projecteuler.net/problem=10
#
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.
#
# WRITE YOUR TESTS!

require_relative 'summation_of_primes'

describe SummationOfPrimes do
  it 'calculates the sum of all primes below ten' do
    answer = SummationOfPrimes.new.below(10)
    expect(answer).to eq 17
  end

  it 'calculates the sum of all primes below two million' do
    answer = SummationOfPrimes.new.below(2_000_000)
    expect(answer).to eq 17
  end
end
