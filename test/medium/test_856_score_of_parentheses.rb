# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/856_score_of_parentheses'
require 'minitest/autorun'

class ScoreOfParenthesesTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      1,
      score_of_parentheses(
        '()'
      )
    )
  end

  def test_default_two
    assert_equal(
      2,
      score_of_parentheses(
        '(())'
      )
    )
  end

  def test_default_three
    assert_equal(
      2,
      score_of_parentheses(
        '()()'
      )
    )
  end
end
