class Fibonacci

  class << self
    def sum_of_even_numbers_to(max)
      numbers_to(max).select(&:even?).inject(&:+)
    end

    def numbers_to(max)
      numbers = []
      last_count = 1
      count = 1
      until count > max
        numbers << count
        old_count = count
        count += last_count
        last_count = old_count
      end
      numbers
    end
  end
end
