# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/easy/2511_maximum_enemy_forts_that_can_be_captured'
require 'minitest/autorun'

class MaximumEnemyFortsThatCanBeCapturedTest < ::Minitest::Test
  def test_default_one
    assert_equal(
      4,
      capture_forts(
        [1, 0, 0, -1, 0, 0, 0, 0, 1]
      )
    )
  end

  def test_default_two
    assert_equal(
      0,
      capture_forts(
        [0, 0, 1, -1]
      )
    )
  end
end
