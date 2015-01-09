# Notes
# Not exactly object oriented.
# What of the abstraction of the STRAND. Then I could query the entire map.
# The Strand could take a starting coordinate, a length, and a direction.


class LargestProductInAGrid
  def initialize(grid)
    @grid = {}
    build_grid(grid)
  end

  def value_at(row,col)
    @grid[Coordinate.new(row,col)]
  end

  def greatest_product
    values = []
    (0...4).each do |direction|
      @grid.each do |c1, v1|
        c2 = c1.neighbors[direction]
        c3 = c2.neighbors[direction]
        c4 = c3.neighbors[direction]
        v2 = @grid[c2]
        v3 = @grid[c3]
        v4 = @grid[c4]
        next if [v1,v2,v3,v4].include?(nil)
        values << v1 * v2 * v3 * v4
      end
    end
    values.max
  end

  def build_grid(grid)
    grid.split("\n").each_with_index do |line, row|
      line.split(" ").each_with_index do |value, col|
        @grid[Coordinate.new(row,col)] = value.to_i
      end
    end
  end
end

class Coordinate
  attr_reader :row, :col

  def initialize(row,col)
    @row = row
    @col = col
  end

  def eql?(other_coordinate)
    self.row == other_coordinate.row && self.col == other_coordinate.col
  end

  def hash
    (row + col).hash
  end

  def neighbors
    array = [ ]
    (row-1..row+1).each do |new_row|
      (col-1..col+1).each do |new_col|
        next if new_col == col && row == new_row
        array << Coordinate.new(new_row,new_col)
      end
    end
    array
  end
end
