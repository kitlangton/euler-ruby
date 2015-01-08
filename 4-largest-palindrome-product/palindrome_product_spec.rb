require_relative 'palindrome_product'

describe PalindromeProduct do
  it 'Returns the larest product of 2' do
    answer = PalindromeProduct.from(2)
    expect(answer).to eq 9009
  end

  it 'Returns the larest product of 3' do
    answer = PalindromeProduct.from(3)
    expect(answer).to eq 906609
  end
end

describe PalindromeChecker do
  it 'Knows whether or not a number is palindromic' do
    expect(PalindromeChecker.check(9009)).to eq true
  end
end

