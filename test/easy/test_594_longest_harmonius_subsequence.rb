# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/594_longest_harmonious_subsequence'
require 'minitest/autorun'

class LongestHarmoniousSubsequenceTest < ::Minitest::Test
  def test_default
    assert_equal(5, find_lhs([1, 3, 2, 2, 5, 2, 3, 7]))
    assert_equal(2, find_lhs([1, 2, 3, 4]))
    assert_equal(0, find_lhs([1, 1, 1, 1]))
  end
end
