class LargestProductSeries
  def initialize(data)
    @data = data.to_s.chars
  end

  def series_of(chunk_size)
    products = []
    @data.each_cons(chunk_size) do |group|
      products << group.map(&:to_i).reduce(:*)
    end
    products.max
  end
end
