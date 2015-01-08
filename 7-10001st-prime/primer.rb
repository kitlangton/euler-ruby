class Primer
  def initialize(target)
    @target = target
  end

  def prime
    count = 1
    position = 1
    until count == @target
      position += 2
      if is_prime?(position)
        count += 1
      end
    end
    position
  end

  def is_prime?(number)
    (2..Math.sqrt(number)).each do |divisor|
      break if number == 2
      return false if number % divisor == 0 || number < 2
    end
    true
  end
end
