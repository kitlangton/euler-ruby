require_relative 'prime_factors'

describe PrimeFactors do
  it "calculates the prime factors up to a given limit" do
    expect(PrimeFactors.for(13195)).to eq [5,7,13,29]
  end

  it "calculates the largest prime factor" do
    expect(PrimeFactors.for(600851475143)).to eq [71, 839, 1471, 6857]
  end
end
