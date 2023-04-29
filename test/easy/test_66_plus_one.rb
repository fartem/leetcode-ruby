require_relative '../../lib/easy/66_plus_one'
require 'minitest/autorun'

class PlusOneTest < Minitest::Test
  def test_default
    assert plus_one([1, 2, 3]) == [1, 2, 4]
    assert plus_one([4, 3, 2, 1]) == [4, 3, 2, 2]
    assert plus_one([9]) == [1, 0]
  end
end
