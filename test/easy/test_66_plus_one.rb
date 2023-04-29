# frozen_string_literal: true

require_relative '../../lib/easy/66_plus_one'
require 'minitest/autorun'

class PlusOneTest < ::Minitest::Test
  def test_default
    assert_equal([1, 2, 4], plus_one([1, 2, 3]))
    assert_equal([4, 3, 2, 2], plus_one([4, 3, 2, 1]))
    assert_equal([1, 0], plus_one([9]))
  end
end
