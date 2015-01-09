class SummationOfPrimes

  def initialize
  end

  def below(limit)
    nums = [ nil, nil, *2..limit]
    (2..Math.sqrt(limit)).each do |i|
      (i**2..limit).step(i) { |m| nums[m] = nil } if nums[i]
    end
    nums.compact.inject(:+)
  end


end
