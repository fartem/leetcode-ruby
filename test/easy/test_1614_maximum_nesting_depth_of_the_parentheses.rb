# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1614_maximum_nesting_depth_of_the_parentheses'
require 'minitest/autorun'

class MaximumNestingDepthOfTheParenthesesTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      3,
      max_depth_of_the_parentheses(
        '(1+(2*3)+((8)/4))+1'
      )
    )
  end

  def test_default_two
    assert_equal(
      2,
      max_depth_of_the_parentheses(
        '1)+((2))+(((3)))'
      )
    )
  end
end
