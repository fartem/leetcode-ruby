# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1403_minimum_subsequence_in_non_increasing_order'
require 'minitest/autorun'

class MinimumSubsequenceInNonIncreasingOrderTest < ::Minitest::Test
  def test_default
    assert_equal([10, 9], min_subsequence([4, 3, 10, 9, 8]))
    assert_equal([7, 7, 6], min_subsequence([4, 4, 7, 6, 7]))
  end
end
