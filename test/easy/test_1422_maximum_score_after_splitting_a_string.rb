# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/1422_maximum_score_after_splitting_a_string'
require 'minitest/autorun'

class MaximumScoreAfterSplittingAStringTest < ::Minitest::Test
  def test_default
    assert_equal(5, max_score('011101'))
    assert_equal(5, max_score('00111'))
    assert_equal(3, max_score('1111'))
  end
end
