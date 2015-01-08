class TripletMaker
  def self.triplet_with_sum(number)
    (1..number).each do |a|
      (a..number).each do |b|
        ((number - a - b)..number).each do |c|
          next unless a < b && b < c
          triplet = SpecialPythagoreanTriplet.new(a, b, c)
          return triplet.product if triplet.valid? && triplet.sum == number
          break if triplet.sum > number
        end
      end
    end
  end
end

class SpecialPythagoreanTriplet
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def product
    a * b * c
  end

  def valid?
    (a**2 + b**2) == c**2
  end

  def sum
    a + b + c
  end

  attr_reader :a, :b, :c

end
