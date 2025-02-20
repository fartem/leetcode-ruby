# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1481_least_number_of_unique_integers_after_k_removals'
require 'minitest/autorun'

class LeastNumberOfUniqueIntegersAfterKRemovalsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      1,
      find_least_num_of_unique_ints(
        [5, 5, 4],
        1
      )
    )
  end

  def test_default_two
    assert_equal(
      2,
      find_least_num_of_unique_ints(
        [4, 3, 1, 1, 3, 3, 2],
        3
      )
    )
  end
end
