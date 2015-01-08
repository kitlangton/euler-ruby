require 'minitest/autorun'
require_relative 'number_spiral'

class NumberSpiralsTest < MiniTest::Test
  def setup
    @ns = NumberSpiral.new
  end

  def test_number_spiral_of_12
  end

  def test_number_spiral_of_1
    assert_equal '1', @ns.length(1)
  end

  def test_number_spiral_of_2
    assert_equal '12', @ns.length(2)
  end

  def test_number_spiral_of_3
    answer = <<EOF
12
 3
EOF
    p answer.chomp
    assert_equal answer.chomp, @ns.length(3)
  end

  def test_number_spiral_of_4
    answer = <<EOF
12
43
EOF
    p answer.chomp
    assert_equal answer.chomp, @ns.length(4)
  end

  def test_number_spiral_of_5
    skip
    answer = <<EOF
 12
543
EOF
    p answer.chomp
    assert_equal answer.chomp, @ns.length(5)
  end

  def test_number_spiral_of_6
    skip
    answer = <<EOF
612
543
EOF
    p answer.chomp
    assert_equal answer.chomp, @ns.length(6)
  end

  def test_number_spiral_of_7
    skip
    answer = <<EOF
7
612
543
EOF
    p answer.chomp
    assert_equal answer.chomp, @ns.length(7)
  end

  def test_number_spiral_of_8
    skip
    answer = <<EOF
78
612
543
EOF
    p answer.chomp
    assert_equal answer.chomp, @ns.length(8)
  end

  def test_number_spiral_of_9
    skip
    answer = <<EOF
789
612
543
EOF
    p answer.chomp
    assert_equal answer.chomp, @ns.length(9)
  end

  def test_number_spiral_of_10
    skip
    answer = <<EOF
7 8 9 10
6 1 2
5 4 3
EOF
    p answer.chomp
    assert_equal answer.chomp, @ns.length(10)
  end

  def test_number_spiral_of_11
    skip
    answer = <<EOF
7 8 9 10
6 1 2 11
5 4 3
EOF
    p answer.chomp
    assert_equal answer.chomp, @ns.length(11)
  end

  def test_number_spiral_of_12
    skip
    answer = <<EOF
7 8 9 10
6 1 2 11
5 4 3 12
EOF
    p answer.chomp
    assert_equal answer.chomp, @ns.length(12)
  end

  def test_number_spiral_of_13
    skip
    answer = <<EOF
7 8 9 10
6 1 2 11
5 4 3 12
      13
EOF
    p answer.chomp
    assert_equal answer.chomp, @ns.length(13)
  end

  def test_number_spiral_of_14
    skip
    answer = <<EOF
7 8 9 10
6 1 2 11
5 4 3 12
    1413
EOF
    p answer.chomp
    assert_equal answer.chomp, @ns.length(14)
  end

  def test_number_spiral_of_15
    skip
    answer = <<EOF
7 8 9 10
6 1 2 11
5 4 3 12
  151413
EOF
    p answer.chomp
    assert_equal answer.chomp, @ns.length(15)
  end

  def test_number_spiral_of_16
    skip
    answer = <<EOF
7 8 9 10
6 1 2 11
5 4 3 12
16151413
EOF
    p answer.chomp
    assert_equal answer.chomp, @ns.length(16)
  end

end
