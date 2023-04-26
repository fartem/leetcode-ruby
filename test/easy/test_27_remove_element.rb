require_relative '../../lib/easy/27_remove_element'
require 'minitest/autorun'

class RemoveElementTest < Minitest::Test
  def test_default
    arr = [3, 2, 2, 3]
    assert remove_element(arr, 3) == 2
    assert arr.take(2) == [2, 2]

    arr = [0, 1, 2, 2, 3, 0, 4, 2]
    assert remove_element(arr, 2) == 5
    assert arr.take(5) == [0, 1, 3, 0, 4]
  end
end
