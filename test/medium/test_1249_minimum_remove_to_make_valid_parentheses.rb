# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/1249_minimum_remove_to_make_valid_parentheses'
require 'minitest/autorun'

class MinimumRemoveToMakeValidParenthesesTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      'lee(t(c)o)de',
      min_remove_to_make_valid(
        'lee(t(c)o)de'
      )
    )
  end

  def test_default_two
    assert_equal(
      'ab(c)d',
      min_remove_to_make_valid(
        'a)b(c)d'
      )
    )
  end

  def test_default_three
    assert_equal(
      '',
      min_remove_to_make_valid(
        '))(('
      )
    )
  end
end
