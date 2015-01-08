require_relative 'sum_square_difference'

describe SumSquareDifference do
  it 'knows the difference for 1 through 10' do
    expect(SumSquareDifference.new(10).difference).to eq 2640
  end

  it 'knows the difference for 1 through 20' do
    expect(SumSquareDifference.new(100).difference).to eq 41230
  end
end
