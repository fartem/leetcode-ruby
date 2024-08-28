# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/medium/150_evaluate_reverse_polish_notation'
require 'minitest/autorun'

class EvaluateReversePolishNotationTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      9,
      eval_rpn(
        ['2', '1', '+', '3', '*']
      )
    )
  end

  def test_default_two
    assert_equal(
      6,
      eval_rpn(
        ['4', '13', '5', '/', '+']
      )
    )
  end

  def test_default_three
    assert_equal(
      22,
      eval_rpn(
        ['10', '6', '9', '3', '+', '-11', '*', '/', '*', '17', '+', '5', '+']
      )
    )
  end

  def test_additional_one
    assert_equal(
      0,
      eval_rpn(
        ['2', '2', '-']
      )
    )
  end
end
