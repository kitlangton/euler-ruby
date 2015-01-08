class PalindromeProduct
  class << self
    def from(number_of_digits)
      build_numbers(number_of_digits).each do |number|
        return number if PalindromeChecker.check(number)
      end
    end

    private

    def build_numbers(number_of_digits)
      multiplier = "9" * number_of_digits
      number_array = (1..multiplier.to_i).to_a
      number_array.repeated_combination(2).map {|a,b| a*b}.sort.reverse
    end
  end
end

class PalindromeChecker
  def self.check(number)
    number.to_s.reverse == number.to_s
  end
end
