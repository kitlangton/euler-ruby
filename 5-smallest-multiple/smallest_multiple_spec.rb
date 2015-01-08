require_relative 'smallest_multiple'

describe SmallestMultiple do
  it 'knows the smallest common multiple of the numbers 1..10' do
    answer = SmallestMultiple.for(10)
    expect(answer).to eq 2520
  end

  it 'knows the smallest common multiple of the numbers 1..20' do
    answer = SmallestMultiple.for(20)
    expect(answer).to eq 232792560
  end
end
