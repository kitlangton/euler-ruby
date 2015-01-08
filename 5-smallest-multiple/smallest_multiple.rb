class SmallestMultiple
  class << self
    def for(number)
      numbers = (1..number).to_a
      i = numbers[-1]
      until numbers.all? { |n| i % n == 0 }
        i += numbers[-1]
      end
      i
    end
  end
end
