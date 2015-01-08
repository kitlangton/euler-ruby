# PROBLEM 9: Special Pythagorean triplet
# https://projecteuler.net/problem=9
#
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
#
# WRITE YOUR TESTS!

require_relative 'special_pythagorean_triplet'

describe SpecialPythagoreanTriplet do
  it 'confirms a valid triplet' do
    expect(SpecialPythagoreanTriplet.new(3,4,5).valid?).to eq true
  end

  it 'rejects an invalid triplet' do
    expect(SpecialPythagoreanTriplet.new(3,5,5).valid?).to eq false
  end

  it 'knows the sum of the numbers' do
    expect(SpecialPythagoreanTriplet.new(3,4,5).sum).to eq 12
  end

  it 'it knows the product of the triplet whose sum is 12' do
    expect(TripletMaker.triplet_with_sum(12)).to eq 60
  end

  it 'it knows the product of the triplet whose sum is 1000' do
    expect(TripletMaker.triplet_with_sum(1000)).to eq 31875000
  end
end
