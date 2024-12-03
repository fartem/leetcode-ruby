# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/503_next_greater_element_ii'
require 'minitest/autorun'

class NextGreaterElementIITest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [2, -1, 2],
      next_greater_elements(
        [1, 2, 1]
      )
    )
  end

  def test_default_two
    assert_equal(
      [2, 3, 4, -1, 4],
      next_greater_elements(
        [1, 2, 3, 4, 3]
      )
    )
  end
end
