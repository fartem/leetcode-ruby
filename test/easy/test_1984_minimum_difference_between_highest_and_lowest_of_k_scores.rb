# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1984_minimum_difference_between_highest_and_lowest_of_k_scores'
require 'minitest/autorun'

class MinimumDifferenceBetweenHighestAndLowestOfKScoresTest < ::Minitest::Test
  def test_default
    assert_equal(0, minimum_difference([90], 1))
    assert_equal(2, minimum_difference([9, 4, 1, 7], 2))
  end
end
