# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/hard/32_longest_valid_parentheses'
require 'minitest/autorun'

class LongestValidParenthesesTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      2,
      longest_valid_parentheses(
        '(()'
      )
    )
  end

  def test_default_two
    assert_equal(
      4,
      longest_valid_parentheses(
        ')()())'
      )
    )
  end

  def test_default_three
    assert_equal(
      0,
      longest_valid_parentheses(
        ''
      )
    )
  end
end
