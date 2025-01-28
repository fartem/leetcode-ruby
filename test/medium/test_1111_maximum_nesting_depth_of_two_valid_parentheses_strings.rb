# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1111_maximum_nesting_depth_of_two_valid_parentheses_strings'
require 'minitest/autorun'

class MaximumNestingDepthOfTwoValidParenthesesStringsTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      [0, 1, 1, 1, 1, 0],
      max_depth_after_split(
        '(()())'
      )
    )
  end

  def test_default_two
    assert_equal(
      [0, 0, 0, 1, 1, 0, 0, 0],
      max_depth_after_split(
        '()(())()'
      )
    )
  end
end
