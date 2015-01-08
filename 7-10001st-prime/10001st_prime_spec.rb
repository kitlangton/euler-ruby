require_relative 'primer'

describe Primer do
  it 'knows the 6th prime number' do
    prime_number = Primer.new(6).prime
    expect(prime_number).to eq 13
  end

  it 'knows the 10,001st prime number' do
    prime_number = Primer.new(10001).prime
    expect(prime_number).to eq  104743
  end
end
