# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/3110_score_of_a_string'
require 'minitest/autorun'

class ScoreOfAStringTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      13,
      score_of_string(
        'hello'
      )
    )
  end

  def test_default_two
    assert_equal(
      50,
      score_of_string(
        'zaz'
      )
    )
  end
end
