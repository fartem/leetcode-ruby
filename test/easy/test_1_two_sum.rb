require_relative '../../lib/easy/1_two_sum'
require 'minitest/autorun'

class TwoSumTest < Minitest::Test
  def test_default
    assert two_sum([2, 7, 11, 15], 9) == [0, 1]
    assert two_sum([3, 2, 4], 6) == [1, 2]
    assert two_sum([3, 3], 6) == [0, 1]
  end
end
