class PrimeFactors

  def self.for(num)
    top = num
    factors = []
    until top == 1
      a_factor = (2..top/2).find { |n| (top % n).zero? } || top
      factors << a_factor
      top /= a_factor
    end
    factors.uniq
  end

end
