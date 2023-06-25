# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/496_next_greater_element_i'
require 'minitest/autorun'

class NextGreaterElementITest < ::Minitest::Test
  def test_default
    assert_equal(
      [-1, 3, -1],
      next_greater_element(
        [4, 1, 2],
        [1, 3, 4, 2]
      )
    )
    assert_equal(
      [3, -1],
      next_greater_element(
        [2, 4],
        [1, 2, 3, 4]
      )
    )
  end
end
